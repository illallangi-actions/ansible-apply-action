#!/bin/sh

echo cd "${GITHUB_WORKSPACE}"
cd "${GITHUB_WORKSPACE}"

echo ansible-galaxy install --role-file ./requirements.yaml
ansible-galaxy install --role-file ./requirements.yaml

echo ansible-playbook ./main.yaml
ansible-playbook ./main.yaml
