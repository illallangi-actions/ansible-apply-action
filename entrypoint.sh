#!/bin/sh

if [[ -z "${SSH_PRIVATE_KEY}" ]]; then
  echo mkdir -p "${HOME}/.ssh"
  mkdir -p "${HOME}/.ssh"
  echo echo "${SSH_PRIVATE_KEY}" \> "${HOME}/.ssh/id_rsa"
  echo "${SSH_PRIVATE_KEY}" > "${HOME}/.ssh/id_rsa"
fi

echo cd "${GITHUB_WORKSPACE}"
cd "${GITHUB_WORKSPACE}"

echo ansible-galaxy install --role-file ./requirements.yaml
ansible-galaxy install --role-file ./requirements.yaml

echo ansible-playbook ./main.yaml
ansible-playbook ./main.yaml
