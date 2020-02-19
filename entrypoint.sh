#!/bin/sh

source=${SOURCE:-source}/

echo cd ${SOURCE}
cd ${SOURCE}

echo ansible-galaxy install --role-file ./requirements.yaml
ansible-galaxy install --role-file ./requirements.yaml

echo ansible-playbook ./main.yaml
ansible-playbook ./main.yaml
