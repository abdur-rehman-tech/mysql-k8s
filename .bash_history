sudo apt update && sudo apt upgrade -y
clear
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
clear
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
clear
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
curl -Lo kind https://kind.sigs.k8s.io/dl/v0.22.0/kind-linux-amd64
chmod +x kind
sudo mv kind /usr/local/bin/kind
kind version
kind create cluster --name dev-cluster
clear
kubectl get nodes
clear
mkdir mysql
cd mysql/
kubectl create ns mysql
vim stateful.yml
vim service.yml
vim stateful.yml
kubectl apply -f service.yml 
kubectl apply -f stateful.yml 
kubectl get pods -n mysql
kubectl get svc -n mysql
kubectl exec -it mysql-stateful-0 -n mysql -- bash
kubectl get pods -n mysql
clear
kubectl exec -it mysql-stateful-0 -n mysql -- bash
cd ..
docker ls
kind get clusters
cd mysql/
ls
vim apply -f service.yml -f stateful.yml 
kubectl apply -f service.yml -f stateful.yml 
cat service.yml 
cat stateful.yml 
kubectl apply -f service.yml 
cd ..
git init
git commit -m "sql with stateful sets in k8s"
git branch -M main
git remote add origin https://github.com/abdur-rehman-tech/mysql-k8s.git
git push -u origin main
git add .
git commit -m "sql with stateful sets in k8s"
git push -u origin main
clear
kind get clusters
cd mysql/
kubectl apply -f service.yml 
kubectl apply -f stateful.yml 
kubectl get svc -n mysql
kubectl get pods -n mysql
kubectl exec -it mysql-stateful-0 -n mysql -- bash
kubectl delete -it mysql-stateful-0 -n mysql -- bash
kubectl delete -it mysql-stateful-0 -n mysql
clear
kubectl delete mysql-stateful-0 -n mysql
kubectl get pods -n mysql
kubectl delete pod mysql-stateful-0 -n mysql
kubectl get pods -n mysql
clear
kubectl get pods -n mysql
clear
kubectl get pods -n mysql
vim configMap.yml
kubectl apply -f configMap.yml 
kubectl get configmap -n mysql
vim stateful.yml 
kubectl apply -f stateful.yml 
vim stateful.yml 
cat stateful.yml 
clear
vim stateful.yml 
kubectl apply -f stateful.yml 
kubectl get statefulset -n mysql
kubectl delete statefulset/mysql-stateful -n mysql
kubectl apply -f stateful.yml 
kubectl get statefulset -n mysql
kubectl get pods -n mysql
kubectl delete pod mysql-stateful-2 -n mysql
kubectl get pods -n mysql
kubectl get statefulset -n mysql
kubectl get pods -n mysql
clear
vim secert.yml
echo "rootpassword" | base64
echo "root" | base64
vim secert.yml
vim stateful.yml 
kubectl apply -f secert.yml 
ping google.com
clear
kubectl apply -f secert.yml 
kind get clusters
kubectl apply -f secert.yml 
clear
cd ..
