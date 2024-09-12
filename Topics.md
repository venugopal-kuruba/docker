1.VM vs Containers
2.installing Docker Engine
3.running demo container
4.understanding Docker Engine Architectur
5.Bulding Custom Container Images with Docker build and Dockerfile.



1.to run a docker container 
docker run --rm -d --name app1 --publish 8000:80 nginx:latest

2. if you missed the publih , then we can edit by using ip tables DNAT.
example: docker run --rm -d --name app2 nginx:latest

3. iptables -t nat -l -n -v   # to see the DNAT connect of background how it is connected.

4.docker ps -a   # to view how amny containers are running

5.docker ps -aq   # to get the id's of a containers

6.docker stop 922cb6adea5f   # to stop a particular id of acontainer

7.docker stop $(docker ps -aq)  # to all the containers

8. docker -h ipaddress ps  # to connect toy he paricular ip address docker.

9.docker images             			    	#to view docker images 

10.docker tag kurubavenu:v1  kuruba:v1		#to modify the image name
 
11.docker rmi  kurubavenu:v1      			# to remove the docker images partically

12.docker run --rm -d --name fastapi -p 8888:80 \
-e HOSTNAME="kuruba-api" \
-e APP_NAME="kuruba_app" \
-e DEPLOYMENT_BRANCH="DEv" \
kurubavenu:v1

13.docker rmi image id --force   #to remove image permanently

