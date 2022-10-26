#flask_docker app
1. You can make image from my Dockerfile
- Download all files in same directory
- cd to this directory
- make command: docker build -t flask_docker . <<<THIS DOT IS IMPORTANT
- make command: docker run -d -p 8888:8080 flask_docker
- to chek go to your browser and write localhost:8888 in adress string
2. You can download image from my dockerhub:
- https://hub.docker.com/repository/docker/oleksiifom/flask-docker
- cd to this directory
- make command: docker run -d -p 8888:8080 flask_docker
- to chek go to your browser and write localhost:8888 in adress string

