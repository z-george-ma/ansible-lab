ssh-keygen -b 2048 -t rsa -q -N "" -f ansible/ansible.pem
mv ansible.pem.pub ubuntu/
cd ansible && docker build -t ansible .
cd ../ubuntu && docker build -t ansible-target-ubuntu .
cd ..