node {

    def gitRepo = 'https://github.com/IvanKirianov/nodejs-image-demo.git'
    def DOCKER_IMAGE_NAME

    stage('Clone repository') {
            checkout scm
    }

    stage('Install dependencies') {
            sh 'npm install'
        
    }

    stage('Build Docker Image'){
            DOCKER_IMAGE_NAME="kiryanovi/node-docker-dev-sample"
            sh 'docker build . -t ' + DOCKER_IMAGE_NAME 
    }

}

