node ('k8s') {
//node {
// DockerHub registry
def dockerRegistry = "index.docker.io/v1"
// 'docker-registry-login' - Jenkins Credentials ID for Docker Hub
    docker.withRegistry("https://${dockerRegistry}/", 'docker-registry-login') {

stage 'Checkout and build image'
    git branch: 'master', url: 'https://github.com/IvanKirianov/nodejs-image-demo.git'
    def nginxImg = docker.build("kiryanovi/node-docker-dev-sample")

stage 'Push image to Docker Hub registry'
    nginxImg.push()
 // Insecure alternative
 //sh 'docker login -u flyer8 -p F********'
 //sh 'docker push flyer8/nginx-lua'

// Deploying using package manager Helm
stage 'Deploying the chart in Kubernetes'
   sh 'helm delete --purge node-docker-dev-sample || true'
   sh 'helm install --name node-docker-dev-sample'
  }
}