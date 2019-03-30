https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker

https://dev.to/alex_barashkov/using-docker-for-nodejs-in-development-and-production-3cgp


docker build -t node-docker-dev-sample .

docker run --rm -it --name node-docker-dev-sample -p 8888:8080 node-docker-dev-sample

docker run --rm -it --name node-docker-dev-sample -p 3000:8080 -p 9229:9229 -v ${PWD}:/usr/src/app -v /usr/src/app/node_modules node-docker-dev-sample