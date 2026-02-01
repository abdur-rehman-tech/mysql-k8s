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
