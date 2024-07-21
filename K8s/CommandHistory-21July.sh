 1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start --force
    7  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.28.3/2023-11-14/bin/linux/amd64/kubectl
    8  chmod +x ./kubectl
    9  cp ./kubectl /usr/bin/
   10  clear
   11  vi deployment.yml
   12  kubectl apply -f deployment.yml 
   13  kubectl get pod
   14  vi service.yml
   15  cat deployment.yml 
   16  vi service.yml
   17  kubectl apply -f service.yml 
   18  cat service.yml 
   19  kubectl get pods
   20  kubectl get svc
   21  yum install socat
   22  socat TCP-LISTEN:8080,fork,su=nobody TCP4:192.168.49.2:30005 &
   23  clear
   24  vi hpa.yml
   25  kubectl api-version
   26  kubectl api-versions
   27  kubectl api-versions | grep autoscaling
   28  vi hpa.yml
   29  kubectl get deployment
   30  vi hpa.yml
   31  cat deployment.yml 
   32  kubectl apply -f hpa.yml 
   33  vi hpa.yml
   34  kubectl apply -f hpa.yml 
   35  kubectl get hpa
   36  kubectl get pods
   37  kubectl describe hpa 
   38  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
   39  kubectl get pods
   40  kubectl get ns
   41  kubectl get pods -n kube-system
   42  kubectl log metrics-server-7ffbc6d68-tr2n9 -n kube-public
   43  kubectl logs metrics-server-7ffbc6d68-tr2n9 -n kube-public
   44  kubectl logs metrics-server-7ffbc6d68-tr2n9 -n kube-system
   45  kubectl get deployment -n kube-system
   46  kubectl edit deployment metrics-server -n kube-system
   47  history
