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

FROM openjdk:11
# AS BUILD_IMAGE
# RUN mkdir /vprofile-project
# COPY ../../ /vprofile-project/
# RUN ls
# #WORKDIR /vprofile-project
WORKDIR /usr/src
COPY ../../../vprofile-project .
RUN apt update && apt install maven -y
# RUN mvn install
CMD ["sleep", "240000"]
# RUN ls

# FROM tomcat:9-jdk11-corretto
# RUN rm -rf /usr/local/tomcat/webapps/*
# # RUN cd /usr/local/tomcat/webapps/ && ls
# # CMD [ "cd /usr/local/tomcat/webapps/ && ls" ]
# COPY --from=BUILD_IMAGE target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
# RUN cd /usr/local/tomcat/webapps/ && ls
# EXPOSE 8080
# # CMD ["catalina.sh", "run"]
# CMD ["sleep", "240000"]