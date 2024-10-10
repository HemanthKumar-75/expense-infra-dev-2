#!/bin/bash

comp=$1
env=$2

echo "Component = {$comp}, Environment = {$env}"
dnf install ansible -y

ansible-pull -i localhost, -U https://github.com/HemanthKumar-75/expense-ansible-roles-terraform.git main.yaml -e component=$comp -e environment=$env

# component and environment names are expecting the values from ansible