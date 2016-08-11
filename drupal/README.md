# Build drupal with docker

How to build drupal with docker-container

 - Generate random password and database
First, you must generate random password and user for mysql by typing
```
bash gen-env.sh
```
From the above command, the random password and users can be fount at `common.env`
 - install `docker-compose`
 - build docker container
execute below command  to build drupal
```
docker-compose up
```
 - Check your drupal installation by accessing http://localhost:9081
 - The docker-composer file also producing phpmyadmin, the phpmyadmin can be accessing from http://localhost:9082
