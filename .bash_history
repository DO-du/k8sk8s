sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL <https://download.docker.com/linux/ubuntu/gpg> | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
sudo kubeadm init --control-plane-endpoint 192.168.56.10 --pod-network-cidr 192.168.56.0/21 --apiservier-advertise-address 192.168.56.10
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo kubeadm init --control-plane-endpoint 192.168.56.10 --pod-network-cidr 192.168.56.0/21 --apiserver-advertise-address 192.168.56.10
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f <https://docs.projectcalico.org/manifests/calico.yaml>
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
kubectl get nodes -o wide
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sudo systemctl daemon-reload && sudo systemctl restart kubelet
kubectl get nodes -o wide
exit
ll\
kubectl get ns
sudo apt install nfs-kernel-server
sudo mkdir -p /var/jenkins_home
sudo chown -R 1000:1000 /var/jenkins_home
sudo vi /etc/exports
sudo systemctl restart nfs-kernel-server
sudo systemctl enable nfs-kernel-server
sudo ufw allow from 192.168.56.0/24 to any port nfs
git clone https://github.com/sysnet4admin/_Book_k8sInfra.git
vi _Book_k8sInfra/ch3/3.3.4/metallb.yaml
kubectl apply -f  _Book_k8sInfra/ch3/3.3.4/metallb.yaml
kubectl get pods -n metallb-system -o wide
vi  _Book_k8sInfra/ch3/3.3.4/metallb-l2config.yaml
kubectl get pods -n metallb-system -o wide
kubectl apply -f  _Book_k8sInfra/ch3/3.3.4/metallb-l2config.yaml
kubectl get configmap -n metallb-system
vi deployment.yaml
kubectl create namespace devops-tools
vi service-account.yaml
kubectl apply -f service-account.yaml
vi deployment.yaml
kubectl apply -f deployment.yaml
kubectl get all
kubectl get pods
kubectl get pod
kubectl get all
vi deployment.yaml
kubectl get all
vi deployment.yaml
kubectl get pv,pvc
kubectl get all
kubectl describe jenkins-deployment-9c84d699
kubectl get all
vi deployment.yaml
kubectl get all
kubectl delete svc jenkins
kubectl delete svc jenkins-service
kubectl delete deployment jenkins-deployment
kubectl get all
kubectl create namespace devops-tools
git clone https://github.com/scriptcamp/kubernetes-jenkins
ll
vd kubernetes-jenkins/
cd kubernetes-jenkins/
kubectl get pv,pvc
kubectl delete pv,pvc --all
kubectl get pv,pvc
kubectl apply -f serviceAccount.yaml
vi volume.yaml 
kubectl apply -f volume.yaml 
ll
vi deployment.yaml 
kubectl apply -f deployment.yaml 
vi service.yaml 
kubectl apply -f service.yaml 
vi service.yaml 
kubectl apply -f service.yaml 
kubectl get all
kubectl get pods --namespace=devops-tools
kubectl get all -n devops-tools
vi deployment.yaml 
kubectl get all -n devops-tools
kubectl get pv,pvc
vi volume.yaml 
vi volume.yaml  -n devops-tools
kubectl get pv,pvc -n devops-tools
kubectl get all -n devops-tools
kubectl describe pod/jenkins-fd5fdf49f-lq8wc
kubectl describe pod jenkins-fd5fdf49f-lq8wc
kubectl describe pods jenkins-fd5fdf49f-lq8wc
kubectl describe pods jenkins-fd5fdf49f-lq8wc -n devops-tools
vi volume.yaml 
kubectl apply -f  volume.yaml 
vi volume.yaml 
kubectl get pv,pvc
kubectl delete pv,pvc --all
kubectl get pv,pvc
kubectl delete pvc jenkins-pv-volume
kubectl get pv,pvc
kubectl delete pv jenkins-pv-volume
kubectl get all -n devops-tools
kubectl delete deployment jenkins -n devops-tools
kubectl delete pv jenkins-pv-volume
kubectl get all -n devops-tools
kubectl delete pv,pvc
kubectl delete pv,pvc --all
kubectl delete pv,pvc --all -grace-period=0 --force
kubectl delete pv,pvc --all  --force
kubectl patch pvc pvc_name -p '{"metadata":{"finalizers":null}}'
kubectl patch pvc jenkins-pv-volume -p '{"metadata":{"finalizers":null}}'
kubectl patch pv jenkins-pv-volume -p '{"metadata":{"finalizers":null}}'
kubectl delete pv,pvc --all
kubectl get pv,pvc
kubectl get pv,pvc -n devops-tools
kubectl delete pv,pvc --all -n devops-tools
kubectl apply -f volume.yaml 
kubectl apply -f deployment.yaml 
kubectl get all -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get all -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get all -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get all -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get nodes
kubectl get nodes -o wide
kubectl get all -n devops-tools
ll
vi service,yaml
vi service.yaml
kubectl get all -n devops-tools
vi deployment.yaml 
vi service.yaml
vi deployment.yaml 
vi service.yaml
vi deployment.yaml 
vi service.yaml
vi deployment.yaml 
vi service.yaml
kubectl apply -f service.yaml 
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get all -n devops-tools
kubectl logs jenkins-fd5fdf49f-dc4km -n devops-tools
exit
kubectl get all -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
ll
kubectl get sa 
kubectl get sa -n devops-tools
vi secret.yaml
kubectl apply -f secret.yaml 
kubectl get sa -n devops-tools
kubectl describe secrets/jenkins-admin -n devops-tools
kubectl get sa -n devops-tools
ll
kubectl apply -f secret.yaml 
kubectl get sa -n devops-tools
kubectl apply -f service-account.yaml 
kubectl get sa -n devops-tools
vi service-account.yaml 
kubectl get sa -n devops-tools
kubectl create token
kubectl create token -n devops-tools
kubectl create token jenkins-adnin
kubectl create token jenkins-admin -n devops-tools
kubectl get sa -n devops-tools
kubectl apply -f secret.yaml 
kubectl get sa -n devops-tools
kubectl get sa
history
vi deployment.yaml 
kubectl describe secrets/jenkins-admin -n devops-tools
kubectl describe pods jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl logs jenkins-fd5fdf49f-dc4km -n devops-tools
kubectl get svc
kubectl get svc -n devops-tools
kubectl logs jenkins-fd5fdf49f-dc4km -n devops-tools
ll
vi deployment.yaml 
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl getall
kubectl get all
kubectl delete deployment all
kubectl delete deployment --all
cd kubernetes-jenkins/
ll
vi deployment.yaml 
exit
