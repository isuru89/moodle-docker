#!bin/bash
export MOODLE_DOCKER_PHP_VERSION=7.2
export MOODLE_DOCKER_WWWROOT=/home/isuru/projects/moodle_www/moodle310
export MOODLE_DOCKER_DB=mysql
export MYSQL_DB_VOLUME=/home/isuru/projects/moodle_data/mysql310

cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

bin/moodle-docker-compose up -d

bin/moodle-docker-wait-for-db



bin/moodle-docker-compose exec webserver php admin/cli/install_database.php --agree-license --fullname="Docker moodle" --shortname="docker_moodle" --summary="Docker moodle site" --adminpass="test" --adminemail="admin@example.com"