gcloud components install kubectl
sudo apt-get install kubectl
gcloud container clusters create   --machine-type n1-standard-2   --num-nodes 2   --zone <compute zone from the list linked below>   --cluster-version latest   ecommerce-website
gcloud container clusters create   --machine-type n1-standard-2   --num-nodes 2   --zone us-central1-a   --cluster-version latest   ecommerce-website
kubectl get node
kubectl create clusterrolebinding cluster-admin-binding   --clusterrole=cluster-admin   --user=damilaretoyese3@gmail.com
ls
cd ecomm-kub/
ls
kubectl apply -f website-deployment.yaml 
kubectl get pods
ls
vi website-service.yaml
kubectl apply website-service.yaml 
kubectl apply -f website-service.yaml 
cat website-service.yaml 
vi website-service.yaml 
kubectl apply -f website-service.yaml 
rm website-service.yaml 
kubectl apply -f website-service.yaml 
ls
cd ..
ls
mv ecomm-kub/
mv website-service.yaml ecomm-kub/
cd ecomm-kub/
ls
kubectl apply -f website-service.yaml
kubectl get services
curl http://34.123.94.19
kubectl get pod
kubectl exec -it website-deployment-95c5bcc88-4zrhd -- bin/bash
kubectl exec -it website-deployment-95c5bcc88-4zrhd -- sh
curl http://34.123.94.19
COPY ./learning-app-ecommerce /var/www/html/
cp ./learning-app-ecommerce /var/www/html/
vi Dockerfile 
docker build -t damilaretoyese/ecom-web:v1 .
vi Dockerfile 
rm Dockerfile 
docker build -t damilaretoyese/ecom-web:v1 .
cd ..
ls
mv Dockerfile ecomm-kub/
cd ecomm-kub/
docker build -t damilaretoyese/ecom-web:v1 .
docker push damilaretoyese/ecom-web:v1
docker login
docker push damilaretoyese/ecom-web:v1
kubectl rollout restart deployment website-deployment
kubectl get pods
kubectl exec -it website-deployment-858cf788b8-26jzk -- sh
ls -l ./learning-app-ecommerce
ls
ls ecomm-kub/
mv db-load-script.sql  deployment-mariadb.yaml  Dockerfile  learning-app-ecommerce  service-mariadb.yaml  website-deployment.yaml  website-service.yaml .
cd ecomm-kub/
mv db-load-script.sql  deployment-mariadb.yaml  Dockerfile  learning-app-ecommerce  service-mariadb.yaml  website-deployment.yaml  website-service.yaml .
mv db-load-script.sql  deployment-mariadb.yaml  Dockerfile  learning-app-ecommerce  service-mariadb.yaml  website-deployment.yaml  website-service.yaml ~
ls
cd ~
ls
clear
curl http://34.123.94.19
ls
docker build -t damilaretoyese/ecom-web:v1 .
docker push damilaretoyese/ecom-web:v1
kubectl rollout restart deployment website-deployment
kuvectl get pod
kubectl get pod
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 --sh
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 -- sh
docker logs
docker ps
docker ps -a
docker images
docker logs c020e2c31715
kubectl logs website-deployment-9f48dd6f4-7rfw6
docker pull php:7.4-apache
docker run -it php:7.4-apache sh
docker build -t damilaretoyese/ecom-web:v1 .
ls -la /var/www
kubectl exec -it -- sh
kubectl get pod
kubectl exec -it website-deployment-9f48dd6f4-8jqr2 -it -- sh
clear
ls
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
docker push damilaretoyese/ecom-web:v1
kubectl get pods
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 -- sh
ls -la ./learning-app-ecommerce
clear
ls
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
cat Dockerfile 
rm Dockerfile 
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 -- sh
rm Dockerfile 
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
pwd
ls -la /home/damilaretoyese3
rm Dockerfile 
ls
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 -- sh
cat Dockerfile
cat website-deployment.yaml 
rm website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl exec -it website-deployment-9f48dd6f4-7rfw6 -- sh
kubectl get pods
kubectl exec -it website-deployment-7fc589c696-lwbch
kubectl exec -it website-deployment-7fc589c696-lwbch -- sh
kubectl get services
rm Dockerfile 
docker build --no-cache -t damilaretoyese/ecom-web:v1 .
docker push damilaretoyese/ecom-web:v1
kubectl apply -f website-deployment.yaml
kubectl get svc
ls
kubectl apply -f service-mariadb.yaml 
kubectl exec -it website-deployment-7fc589c696-lwbch -- sh
kubectl get svc
kubectl get pods
ls
kubectl apply -f deployment-mariadb.yaml 
kubectl get pods
cat deployment-mariadb.yaml 
kubectl describe pod mariadb-677d786bf-vkmpv
kubectl get configmap
kubectl apply -f db-load-script.yaml 
kubectl get pods
kubectl delete mariadb-677d786bf-vkmpv
kubectl apply -f deployment-mariadb.yaml 
kubectl get pods
ls
rm website-deployment.yaml 
ls
cd learning-app-ecommerce/
ls
rm index.php 
ls
cd ..
ls
mv index.php learning-app-ecommerce/
cd learning-app-ecommerce/
ls
cd ..
kubectl apply -f feature-toggle-config.yaml 
kubectl apply -f website-deployment.yaml 
kubectl get configmap feature-toggle-config
kubectl get pod
kubectl exec -it website-deployment-5994d6f866-g9h9b -- sh
cd learning-app-ecommerce/css/
ls
vim dark-theme.css
nano dark-theme.css
cat dark-theme.css 
cd ..
nano index.php 
kubectl apply -f feature-toggle-config.yaml
cd ..
kubectl apply -f feature-toggle-config.yaml
vi deployment-mariadb.yaml 
vi website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl exec -it website-deployment-5994d6f866-g9h9b -- sh
kubectl exec -it website-deployment-5994d6f866-g9h9b -- ls /var/www/html/css
ls
cd learning-app-ecommerce/
ls
cd css/
ls
kubectl exec -it website-deployment-5994d6f866-g9h9b -- cat /var/www/html/index.php
cd ..
cat index.php 
kubectl delete pod -l app=ecommerce-website
kubectl exec -it website-deployment-5994d6f866-g9h9b -- cat /var/www/html/index.php
kubectl get pods
kubectl exec -it website-deployment-5994d6f866-4pf5n -- cat /var/www/html/index.php
docker build -t damilaretoyese/ecom-web:v2 .
cd ..
docker build -t damilaretoyese/ecom-web:v2 .
docker push damilaretoyese/ecom-web:v2
nano website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl get pods
kubectl describe website-deployment-55f95944b7-42kzc
kubectl describe pod website-deployment-55f95944b7-42kzc
kubectl exec -t website-deployment-55f95944b7-42kzc -- cat /var/www/html/index.php
ls
vi feature-toggle-config.yaml 
kubectl apply -f feature-toggle-config.yaml 
kubectl rollout restart deployment/website-deployment
kubectl get pods
kubectl scale deployment/ecom-web --replicas=6
kubectl get pods
kubectl get deployments
kubectl scale deployment/website-deployment --replica=6
kubectl scale --help
kubectl scale deployment/website-deployment --replicas=6
kubectl get pods
kubectl top pods
cd learning-app-ecommerce/
vi index.php 
nono index.php 
nano index.php 
vim index.php 
ls
cat css/dark-theme.css 
ls
rm index.php 
ls
cd css/
ls
rm dark-theme.css 
cd ..
ls
mv {promo-banner dark-theme}.css learning-app-ecommerce/css/
mv promo-banner.css dark-theme.css learning-app-ecommerce/css/
mv index.php learning-app-ecommerce/
cd learning-app-ecommerce/
ls
ls css/
docker build -t damilaretoyese/ecom-web:v3 .
cd ~
docker build -t damilaretoyese/ecom-web:v3 .
docker push damilaretoyese/ecom-web:v3
nano website-deployment.yaml 
kubectl apply -f website-deployment.yaml 
kubectl rollout status deployment/website-deployment
kubectl rollout undo deployment/website-deployment
ls
rm website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl autoscale deployment website-deployment --cpu-percent=50 --min=2 --max=10
kubectl get pods
kubectl autoscale deployment website-deployment --cpu-percent=50 --min=5 --max=10
kubectl delete hpa website-deployment
kubectl get pods
kubectl autoscale deployment website-deployment --cpu-percent=50 --min=5 --max=10
kubectl get pods
kubectl  get hpa
kubectl get svc
ab -n 1000 -c 50 http://34.123.94.19
sudo apt-get update
sudo apt-get install apache2-utils
ab -n 1000 -c 50 http://34.123.94.19
ab -n 1000 -c 50 http://34.123.94.19/
kubectl get pods -w
ab -n 3000 -c 50 http://34.123.94.19/
kubectl get pods -w
ab -n 3000 -c 500 http://34.123.94.19/
kubectl get pods -w
rm website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl exec -it 
kubectl get pods
kubectl exec -it website-deployment-6c56c9d89f-8fmsf -- sh
exit
ls
kubeectl get pods
kubectl get pods
kubectl exec -it website-deployment-6c56c9d89f-bbgtx -- sh
kubectl get pods
vi feature-toggle-config.yaml 
kubectl apply -f feature-toggle-config.yaml 
kubectl apply -f website-deployment.yaml 
kubectl rollout undo deployment/website-deployment
vi feature-toggle-config.yaml 
kubectl apply -f feature-toggle-config.yaml 
kubectl apply -f website-deployment.yaml 
vi feature-toggle-config.yaml 
kubectl create secret generic db-credentials   --from-literal=DB_USER=ecomuser   --from-literal=DB_PASSWORD=ecompassword   --from-literal=DB_NAME=ecomdb   --from-literal=DB_HOST=mysql-service
rm website-deployment.yaml 
kubectl apply -f website-deployment.yaml
kubectl get pods
kubectl exec -it website-deployment-d96789b6d-mvjq5 -- printenv | DB
kubectl exec -it website-deployment-d96789b6d-mvjq5 -- printenv | grep DB
git init
nano .gitignore
