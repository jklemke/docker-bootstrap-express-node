# bootstrap-001
A basic website that uses the [Boostrap](https://getbootstrap.com/) HTML toolkit.  Pages are delivered with node.js and Express.  Can be used without Docker if npm and node are installed. In this case, `npm install` must be run to download the node dependencies. If node and npm are not installed on the host, then use the Docker file to build a docker image based on node:alpine.  

Includes a module /app/groxlog.js which uses core node functionality to write to a log file on the host machine.

## to start with node.js
    node index

## to start with npm
    npm start

## to use docker
    docker build -t bootstrap-001 .
    docker run -it -d -p 8181:8181 bootstrap-001
