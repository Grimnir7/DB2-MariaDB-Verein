FROM mariadb:latest

LABEL maintainer="Grimnir7"

ENV MYSQL_ROOT_PASSWORD=mypass1234
ENV MYSQL_DATABASE=mariadb_project_db

RUN apt-get update && \
    apt-get install -y mariadb-client && \
    rm -rf /var/lib/apt/lists/*

COPY ./setup-scripts/01_user_setup.sql /docker-entrypoint-initdb.d/01_user_setup.sql
COPY ./setup-scripts/02_verein_tables.sql /docker-entrypoint-initdb.d/02_verein_tables.sql
COPY ./setup-scripts/03_verein_data.sql /docker-entrypoint-initdb.d/03_verein_data.sql