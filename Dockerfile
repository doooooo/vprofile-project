# FROM maven:3.9.9-amazoncorretto-11 
# #AS BUILD_IMAGE
# # RUN mkdir /vprofile-project
# # COPY ../../ /vprofile-project/
# # RUN ls
# WORKDIR /vprofile-project
# COPY . .
# RUN mvn install
# CMD [ "ls" ]
# # RUN ls

FROM openjdk:11 AS BUILD_IMAGE
WORKDIR /usr/src
COPY . .
RUN apt update && apt install maven -y
RUN mvn install

FROM tomcat:9.0.74-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
# RUN cd /usr/local/tomcat/webapps/ && ls
# CMD [ "cd /usr/local/tomcat/webapps/ && ls" ]
COPY --from=BUILD_IMAGE /usr/src/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
# RUN cd /usr/local/tomcat/webapps/ && ls
# EXPOSE 8080
RUN shutdown.sh
CMD ["catalina.sh", "run"]
# CMD ["sleep", "240000"]