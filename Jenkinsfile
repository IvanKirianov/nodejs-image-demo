node {

    def gitRepo = 'https://github.com/IvanKirianov/nodejs-image-demo.git'
    def DOCKER_IMAGE_NAME

    stage('Clone repository') {
        try {
            checkout scm
        } 
    }

    stage('Install dependencies') {
        try{
            sh 'npm install'
        } 
    }


    stage('Build Docker Image'){
        try{
            DOCKER_IMAGE_NAME="kiryanovi/node-docker-dev-sample"
            sh 'docker build . -t ' + DOCKER_IMAGE_NAME
        } 
    }


}

