#!bin/bash

export MOODLE_DOCKER_PHP_VERSION=7.0
export MOODLE_DOCKER_WWWROOT=/home/isuru/projects/moodle_www/moodle35
export MOODLE_DOCKER_DB=mysql
export MYSQL_DB_VOLUME=/home/isuru/projects/moodle_data/mysql35

bin/moodle-docker-compose down