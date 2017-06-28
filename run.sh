docker run --rm -it -p 2222:22 --name target ansible-target-ubuntu
cd test
docker run --rm -it -v `pwd`:/app --link target ansible ansible-playbook -v -b /app/site.yml