#!/bin/bash

read -p "Enter project name: " PROJECT_NAME

PROJECT_ROOT_REPLACE=/var/www/$PROJECT_NAME-backend
VIRTUALENV_HOME_REPLACE=/root/.virtualenvs/$PROJECT_NAME_env

grep -rl "PROJECT_NAME_REPLACE" ../project | xargs sed -i 's+PROJECT_NAME_REPLACE+'$PROJECT_NAME'+g'
grep -rl "PROJECT_ROOT_REPLACE" ../project | xargs sed -i 's+PROJECT_ROOT_REPLACE+'$PROJECT_ROOT_REPLACE'+g'
grep -rl "VIRTUALENV_HOME_REPLACE" ../project | xargs sed -i 's+VIRTUALENV_HOME_REPLACE+'$VIRTUALENV_HOME_REPLACE'+g'

mv ../project/project ../project/$PROJECT_NAME
mv ../project ../$PROJECT_NAME-backend