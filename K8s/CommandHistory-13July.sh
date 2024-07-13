1  cd /
    2  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    3  ls
    4  sudo rpm -Uvh minikube-latest.x86_64.rpm
    5  minikube --help
    6  clear
    7  minikube start 
    8  yum install docker -y
    9  systemctl start docker
   10  minikube start 
   11  minikube start --force
   12  docker ps
   13  docker exec -it minikube bash
   14  clear
   15  docker ps
   16  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.30.0/2024-05-12/bin/linux/amd64/kubectl
   17  ls
   18  chmod +x kubectl 
   19  ls
   20  kubectl get pods
   21  ./kubectl get pods
   22  ./kubectl --help
   23  clear
   24  ./kubectl run gfg --image=nginx
   25  ./kubectl get pods
   26  ./kubectl describe pod gfg
   27  ./kubectl logs gfg
   28  docker attach minikube
   29  docker ps
   30  docker exec -it minikube bash
   31  ls
   32  clear
   33  kubectl get pods
   34  ./kubectl get pods
   35  date
   36  which date
   37  cp kubectl /usr/bin
   38  kubectl get pods
   39  ls
   40  kubectl get pods
   41  kubectl delete pod gfg
   42  kubectl get pods
   43  kubectl create deployment gfgdep1 --image=nginx
   44  kubectl get deployment
   45  kubectl get pods
   46  kubectl delete pod gfgdep1-7b9cc8dcb4-cfl5w
   47  kubectl get pods
   48  kubectl get pods
   49  kubectl describe deployment gfgdep1
   50  kubectl exec -it gfgdep1-7b9cc8dcb4-t5lrc -- bash
   51  clear
   52  ls
   53  kubectl get pods
   54  kubectl get deployment
   55  kubectl scale deployment gfgdep1 --replicas=5
   56  kubectl get pods
   57  kubectl get pods
   58  kubectl get pods
   59  kubectl get deployment
   60  kubectl scale deployment gfgdep1 --replicas=10
   61  kubectl get deployment
   62  kubectl get deployment
   63  kubectl get pods
   64  kubectl scale deployment gfgdep1 --replicas=1
   65  kubectl get pods
   66  kubectl exec -it gfgdep1-7b9cc8dcb4-t5lrc  hostname -I
   67  kubectl exec -it gfgdep1-7b9cc8dcb4-t5lrc -- hostname -I
   68  curl 10.244.0.5
   69  kubectl expose deployment gfgdep1 --port 80 --type=NodePort
   70  kubectl get svc
   71  minikube ip
   72  curl 192.168.49.2:32729
   73  clear
   74  curl 192.168.49.2:32729
   75  kubectl scale deployment gfgdep1 --replicas=10
   76  kubectl get service
   77  curl 192.168.49.2:32729
   78  curl 192.168.49.2:32729
   79  curl 192.168.49.2:32729
   80  curl 192.168.49.2:32729
   81  curl 192.168.49.2:32729
   82  curl 192.168.49.2:32729
   83  curl 192.168.49.2:32729
   84  curl 192.168.49.2:32729
   85  curl 192.168.49.2:32729
   86  curl 192.168.49.2:32729
   87  curl 192.168.49.2:32729
   88  curl 192.168.49.2:32729
   89  curl 192.168.49.2:32729
   90  kubectl scale deployment gfgdep1 --replicas=0
   91  curl 192.168.49.2:32729
   92  kubectl scale deployment gfgdep1 --replicas=1
   93  curl 192.168.49.2:32729
   94  curl 192.168.49.2:32729
   95  kubectl get pods
   96  curl 192.168.49.2:32729
   97  clear
   98  clear
   99  vi pod.yml
  100  kubectl apply -f pod.yml 
  101  kubectl get pods
  102  history
