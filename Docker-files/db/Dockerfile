FROM mysql
COPY db_backup.sql db_backup.sql
ENV MYSQL_ROOT_PASSWORD=vprodbpass
ENV MYSQL_DATABASE=accounts
# RUN mysql -u root -pvprodbpass accounts < db_backup.sql