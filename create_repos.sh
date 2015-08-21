#!/usr/bin/env bash

ASSIGNMENT=search
# ASSIGNMENT=adversarial-search
# ASSIGNMENT=planning
# ASSIGNMENT=reinforcement
PACKAGE_DIR=../t1a/
# PACKAGE_DIR=../t1b/
# PACKAGE_DIR=../t1c/
# PACKAGE_DIR=../t2/
ORG=pucrs-ai-cs
USER=meneguzzi
STUDENTS=`pwd`/students

teachers_pet create_student_teams --organization=${ORG} --username=${user} --token=${TOKEN}
teachers_pet add_to_team --members Owners.csv --organization=${ORG} --username=${USER} --token=${TOKEN}
#
teachers_pet create_repos --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT}
pushd ${PACKAGE_DIR}/${ASSIGNMENT}
git pull
teachers_pet push_files --organization=${ORG} --username=${USER} --token=${TOKEN} --repository=${ASSIGNMENT} --students="${STUDENTS}"
popd

#TODO Learn how to use open_issue command to describe the assignment using "https://github.com/education/teachers_pet"