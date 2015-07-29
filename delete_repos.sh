#!/usr/bin/env bash

# ASSIGNMENT=search
# ASSIGNMENT=adversarial-search
# ASSIGNMENT=planning
ASSIGNMENT=reinforcement
# PACKAGE_DIR=../t1a/
# PACKAGE_DIR=../t1b/
# PACKAGE_DIR=../t1c/
PACKAGE_DIR=../t2/
ORG=pucrs-ai-cs
USER=meneguzzi
STUDENTS=`pwd`/students

#TODO Learn how to use open_issue command to describe the assignment using "https://github.com/education/teachers_pet"

ASSIGNMENT=reinforcement
teachers_pet delete_repos --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT}

ASSIGNMENT=planning
teachers_pet delete_repos --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT}

ASSIGNMENT=adversarial-search
teachers_pet delete_repos --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT}

ASSIGNMENT=search
teachers_pet delete_repos --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT}