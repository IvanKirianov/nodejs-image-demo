podTemplate(label: 'jenkins', containers: [
    containerTemplate(name: 'helm', image: 'lachlanevenson/k8s-helm:latest', command: 'cat', ttyEnabled: true)
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]) {
    node('jenkins') {

        stage('do some helm work') {
            container('helm') {
               sh "helm ls"
            }
        }
    }
}