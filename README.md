# docker-bootstrap-express-node
A basic express-node.js web site running inside a docker container. The www directory in this project holds html and js files that are visible as a volume inside the container. The [https://getbootstrap.com/](bootstrap) HTML toolkit is used.

#### a number of shell scripts are included for docker trial and error testing
   `dbuild.sh` to create an image called bootstrap, using command
      
       docker build -t bootstrap .  

   `drun.sh`  to run a container called bootstrap001 with a www volume of html and js files from the host system, using command 
      
       docker run -it -d -p 8787:8787 -v $(pwd)/www:/home/node/app/www  --name bootstrap001 bootstrap
   
   `dbash.sh` to run a bash shell inside the container, using command 
   
       docker exec -it bootstrap001 bash 
   
   `dstop.sh`  to stop the container, using command 
   
       docker stop bootstrap001 

  `dteardown.sh` to remove the container and image using command 

      docker rm -f bootstrap001
     
      docker rmi bootstrap
   


