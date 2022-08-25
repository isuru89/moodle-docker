#!bin/bash
export MOODLE_DOCKER_PHP_VERSION=7.2
export MOODLE_DOCKER_WWWROOT=/home/isuru/projects/moodle_www/moodle310
export MOODLE_DOCKER_DB=mysql
export MYSQL_DB_VOLUME=/home/isuru/projects/moodle_data/mysql310

bin/moodle-docker-compose down