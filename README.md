# docker-bootstrap-express-node
A basic express-node.js web site running inside a docker container. The www directory in this project holds html and js files that are visible as a volume inside the container. The [bootstrap](https://getbootstrap.com/) HTML toolkit is used.

It can be a challenge to digest all of the information on docker volumes.  To oversimplify: don't use the VOLUME command in a Dockerfile. Instead, create a volume as a -v parameter of the `docker run` command, or graduate to docker-compose.yml and specify your volumes there.

#### a number of shell scripts are included for docker trial and error testing
   `dbuild.sh` to create an image called bootstrap, using command
      
       docker build -t bootstrap .  

   `drun.sh`  to run a container called bootstrap001 with the www/html and www/js directories from the host machine available as a volume of in the container, using command 
      
       docker run -it -d -p 8787:8787 -v $(pwd)/www:/home/node/app/www  --name bootstrap001 bootstrap
   
   `dbash.sh` to run a bash shell inside the container, using command 
   
       docker exec -it bootstrap001 bash 
   
   `dstop.sh`  to stop the container, using command 
   
       docker stop bootstrap001 

  `dteardown.sh` to remove the container and image (keeping the node debian image) using command 

      docker rm -f bootstrap001
     
      docker rmi bootstrap
   


