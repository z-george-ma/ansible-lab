FROM williamyeh/ansible:alpine3

RUN apk --update add curl ca-certificates && \
rm -rf /var/var/cache/apk/*

COPY ansible.cfg /etc/ansible/ansible.cfg
COPY ansible.pem /etc/ansible/ansible.pem
COPY hosts /etc/ansible/hosts
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["ansible-playbook", "--version"]
