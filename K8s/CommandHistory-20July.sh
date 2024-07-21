[root@ip-172-31-33-142 mern_app_deployment_on_k8s]# history
    1  cd /
    2  yum install docker -y 
    3  systemctl start docker 
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start --force
    7  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.28.3/2023-11-14/bin/linux/amd64/kubectl
    8  chmod +x ./kubectl
    9  cp ./kubectl /usr/bin/
   10  yum install git -y
   11  git clone https://github.com/sudhanshuvlog/GFG-Devops22.git
   12  cd GFG-Devops22/K8s/mern_app_deployment_on_k8s/
   13  ls
   14  kubectl get pods
   15  kubectl apply -f secret.yml 
   16  kubectl get secret
   17  kubectl describe secret
   18  vi mongo-app.yml 
   19  kubectl apply -f mongo-app.yml 
   20  kubectl get pods
   21  kubectl get pods
   22  kubectl apply -f mongo-service.yml 
   23  kubectl get svc
   24  kubectl apply -f mongo-config.yml 
   25  ls
   26  kubectl apply -f  mongo-express-webapp.yml 
   27  minikube ip
   28  ls
   29  cat webapp-service.yml 
   30  kubectl apply -f webapp-service.yml 
   31  kubectl get svc
   32  curl 192.168.49.2:30112
   33  yum install socat -y
   34  kubectl get svc
   35  socat TCP-LISTEN:8081,fork,su=nobody TCP4:192.168.49.2:30112 &
   36  netstat -tnlp
   37  kubectl get pods
   38  kubectl get deployment
   39  kubectl scale deployment mongo-deployment --replicas=5
   40  kubectl get replicaset
   41  kubectl get pods
   42  kubectl scale deployment mongo-deployment --replicas=1
   43  kubectl get pods
   44  kubectl delete pod mongo-deployment-654884d54-2bvz7 
   45  kubectl get pods
   46  vi mongo-app.yml 
   47  vi mongo-app.yml 
   48  kubectl apply -f mongo-app.yml 
   49  kubectl get pods
   50  docker exec -it minikube bash
   51  kubectl get pods
   52  kubectl get pods -o yaml
   53  clear
   54  docker exec -it minikube bash
   55  ls
   56  ls
   57  kubectl get pods
   58  kubectl delete pod mongo-deployment-788474cf5d-jqtst
   59  kubectl get pods
   60  vi mongo-app.yml 
   61  kubectl apply -f mongo-app.yml 
   62  kubectl get pods
   63  docker exec -it minikube bash
   64  kubectl get pods
   65  kubectl delete pod mongo-deployment-56c895c55-sgz27
   66  kubectl get pods
   67  vi pv.yml 
   68  hostname
   69  vi pv.yml 
   70  kubectl apply -f pv.yml 
   71  kubectl get pv
   72  docker exec -it minikube bash
   73  kubectl get pv
   74  vi pvc.yml 
   75  kubectl apply -f pvc.yml 
   76  kubectl get pv
   77  vi mongo-app.yml 
   78  kubectl get pods
   79  kubectl apply -f mongo-app.yml 
   80  vi mongo-app.yml 
   81  kubectl apply -f mongo-app.yml 
   82  kubectl get pods
   83  docker exec -it minikube bash
   84  kubectl get namespaces
   85  kubectl get pod
   86  kubectl get pod -n default
   87  kubectl get pod -n kube-system
   88  kubectl get pod -n kube-public
   89  vi mygfgns.yml
   90  kubectl apply -f mygfgns.yml 
   91  kubectl get ns
   92  vi pod.yml
   93  vi pod.yml
   94  kubectl get pods -n mygfg
   95  kubectl apply -f pod.yml 
   96  kubectl get pod
   97  kubectl get pod -n mygfg
   98  cat pod.yml 
   99  vi pod.yml
  100  kubectl apply -f pod.yml 
  101  kubectl get pods
  102  kubectl get pods -n mygfg
  103  kubectl delete pod flask-app -n mygfg
  104  kubectl apply -f pod.yml 
  105  kubectl get pods
  106  kubectl get pods -n mygfg
  107  kubectl describe pod -n mygfg
  108  history
  109  kubectl get all
  110  kubectl get all -n mygfg
  111  kubectl get ns
  112  kubectl --help
  113  minikube --help
  114  minikube dashboard --help
  115  minikube dashboard 
  116  history
  1  kubectl get ns
    2  kubectl get pods -n kubernetes-dashboard
    3  kubectl get deployments -n kubernetes-dashboard
    4  kubectl edit deployments kubernetes-dashboard -n kubernetes-dashboard
    5  kubectl get svc  -n kubernetes-dashboard
    6  kubectl edit svc kubernetes-dashboard -n kubernetes-dashboard
    7  kubectl get svc  -n kubernetes-dashboard
    8  cd /
    9  socat TCP-LISTEN:8083,fork,su=nobody TCP4:192.168.49.2:31387 &
   10  ls
   11  vd GFG-Devops22/K8s/mern_app_deployment_on_k8s/
   12  cd GFG-Devops22/K8s/mern_app_deployment_on_k8s/
   13  ls
   14  vi pod.yml 
   15  kubectl apply -f pod.yml 
   16  vi pod.yml 
   17  kubectl apply -f pod.yml 
   18  vi pod.yml 
   19  kubectl apply -f pod.yml 
   20  kubectl get pods -n mygfg
   21  kubectl delete pod flask-app -n mygfg
   22  kubectl apply -f pod.yml 
   23  kubectl get pods -n mygfg
   24  kubectl exec pod flask-app -- bash
   25  kubectl exec flask-app -- bash
   26* kubectl exec pods f
   27  kubectl exec flask-app -- bash -n mygfg
   28  kubectl get pods -n mygfg
   29  kubectl exec flask-app -- bash -n mygfg 
   30  kubectl exec --help
   31  kubectl exec --tty flask-app -- /bin/bash -n mygfg 
   32  clear
   33  kubectl get pods -n mygfg
   34  cp pod.yml pod1.yml
   35  vi pod1.yml 
   36  kubectl apply -f pod1.yml 
   37  kubectl get pods
   38  vi pod1.yml 
   39  kubectl apply -f pod1.yml 
   40  kubectl get pods
   41  kubectl exec flask-app -- bash
   42  kubectl exec --tty  flask-app -- bash
   43  kubectl exec --stdin --tty  flask-app -- bash
   44  kubectl get pods
   45  kubectl exec --stdin --tty  flask-app -- bash
   46  kubectl get pods
   47  kubectl get pods -n mygfg
   48  history
