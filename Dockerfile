FROM fedora
LABEL "repository"="https://github.com/illallangi-actions/ansible-apply-action"
LABEL "homepage"="https://github.com/illallangi-actions/ansible-apply-action"
LABEL "maintainer"="Andrew Cole <andrew.cole@illallangi.com>"

RUN \
  yum -y install ansible; \
  yum -y update; \
  yum -y clean all

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]