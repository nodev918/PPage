MYSQL_HOST=172.17.0.2

delete_name = mysql2
connect_name = mysql

# docker
docker-delete:
	sudo docker container stop $(delete_name) && sudo docker container rm $(delete_name)


# mysql 
mysql-server:
	sudo docker run -it -p 3307:3306 --name $(connect_name) -e MYSQL_ROOT_PASSWORD=12345 -d mysql

mysql-cli: 
	sudo docker run -it --rm mysql mysql -h $(MYSQL_HOST) -u root -p

mysql-host:
	sudo docker inspect -f '{{ .NetworkSettings.IPAddress }}' mysql


