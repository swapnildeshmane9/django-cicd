#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3 -m venv env
fi

source /var/lib/jenkins/workspace/Django-cicd/env/bin/activate


pip3 install -r /var/lib/jenkins/workspace/Django-cicd/requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs