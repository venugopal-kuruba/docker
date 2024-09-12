docker run --rm -d --name app1 --publish 8000:80 nginx:latest
docker run --rm -d --name app2 nginx:latest
iptables -t nat -l -n -v
docker ps -a
docker stop $(docker ps -aq)
docker stop 922cb6adea5f 
docker -h ipaddress ps
docker build -t kurubavenu:v1 .
docker images
docker tag kurubavenu:v1  kuruba:v1
docker rmi  kurubavenu:v1 
docker rmi image id --force     