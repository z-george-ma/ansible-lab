FROM ubuntu

RUN apt-get update && \
apt-get install -y openssh-server python sudo && \
ssh-keygen -A && \
adduser --disabled-password --gecos "" ansible && \
echo ansible ALL=NOPASSWD:ALL > /etc/sudoers.d/ansible

COPY ansible.pem.pub /home/ansible/.ssh/authorized_keys

RUN chown -R ansible:ansible /home/ansible/.ssh && \
chmod 400 /home/ansible/.ssh/authorized_keys && \
mkdir /var/run/sshd && \ 
chmod 0755 /var/run/sshd

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]
EXPOSE 22