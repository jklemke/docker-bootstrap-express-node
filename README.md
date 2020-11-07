# docker-bootstrap-express-node
A basic express-node.js web site running inside a docker container. www directory on the host machine holds html and js files. 

#### a number of shells scripts are included for docker trial and error testing
   `docker build -t bootstrap .` to create an image called bootstrap

   `docker run -it -p 8787:8787 -v $(pwd)/www:/home/node/app/www  --name bootstrap001 bootstrap` to run a container called bootstrap001 with a www volume of html and js files from the host system
   
   `docker stop bootstrap001` to stop the container
   
   


