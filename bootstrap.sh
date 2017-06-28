ssh-keygen -b 2048 -t rsa -q -N "" -f ansible-docker/ansible.pem
mv ansible-docker/ansible.pem.pub ubuntu/
cd ansible-docker && docker build -t ansible .
cd ../ubuntu && docker build -t ansible-target-ubuntu .
cd ..