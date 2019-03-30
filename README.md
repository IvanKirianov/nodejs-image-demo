# CI configured on DockerHub  side v1
docker build -t kiryanovi/node-docker-dev-sample . 
docker push kiryanovi/node-docker-dev-sample 

#v2 setup CI\CD on Jenkins
helm install --name jenkins stable/jenkins --namespace infra

kubectl port-forward pod_name 8080:8080 50000:50000 -n infra

User:
admin
Password: 
 printf $(kubectl get secret --namespace infra jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo


#Install NodeJs App
helm install --name nodejs-image-demo . --namespace app

#Open site
kubectl port-forward pod_name 8181:8181 -n app



