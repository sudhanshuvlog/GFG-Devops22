### Kubernetes

- Kubernetes Overview - https://kubernetes.io/docs/concepts/overview/
- Kubernetes History - https://www.ibm.com/blog/kubernetes-history/
- Container Orchestration Overview - https://kubernetes.io/docs/concepts/overview/
- What is Microservices - https://aws.amazon.com/microservices/
- What is a Pod - https://kubernetes.io/docs/concepts/workloads/pods/
- Deployment Strategies - https://spacelift.io/blog/kubernetes-deployment-strategies


### What is a Monolithic architecture?

- A monolithic architecture is a singular, large computing network with one code base that couples all of the business concerns together.

### What are Microservices?

- Microservices - also known as microservice architecture - is an architectural style that structures an application as a collection of services that are:
    - Independently deployable
    - Loosely coupled
Ref: https://microservices.io/
- **Need for Microservices:**
    - If we deploy a monolithic application, we need to deploy the entire application even if we make a small change in the code.
    - If one part of the application is not working, the entire application will not work.
    - So In this case, We can leverage the Microservices architecture to solve the above problems.

### Container Orchestration

Container orchestration automatically provisions, deploys, scales, and manages containerized applications without worrying about the underlying infrastructure

### What is K8S?

- Kubernetes is an open-source container orchestration platform that automates many of the manual processes involved in deploying, managing, and scaling containerized applications.
- Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation.
- **Need for K8S :**
    - If we have a large number of containers, it is difficult to manage them manually.
    - Let's say we have 100 microservices and we need to deploy them in a server.
    - We need to manage the 100 microservices in the server.
    - We need to manage the scaling, load balancing, and other things.
    - So In this case, We can leverage the K8S to solve the above problems.

### K8S Setup

- First, we have to install docker to run the minikube.
```
yum install docker -y
systemctl start docker
```
- Then we have to install minikube. You can use this link to install minikube - https://minikube.sigs.k8s.io/docs/start/
- Once the minikube is installed, we can start the minikube using the below command.
```
minikube start
```

### Why did we install Minikube?

- Generally, K8S comes with a lot of services, So it's a lengthy process to install and manage them.
- So, we can use minikube to learn and develop for Kubernetes.

### Kubectl

- Now, we have to install `kubectl` to communicate with the Kubernetes cluster.
- You can use this link to install kubectl - https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/ and don't forget to make it executable.
- `kubectl` is a program used to communicate with the Kubernetes cluster.
- We can use `kubectl` to deploy applications, inspect and manage cluster resources, and view logs.

### K8s Commands used in the session

- **kubectl run pod_name --image=nginx** - This command is used to run a pod in the Kubernetes cluster.
- **kubectl get pods** - This command is used to get the pods in the Kubernetes cluster.
- **kubectl logs <pod name>** - Get the pod logs
- **docker exec -it minikube bash** - Go inside the minikube container with bash shell
- **kubectl exec -it mydep1-5d9699b6b7-mmjvv bash** - Get the bash terminal of given pod
- **kubectl delete pod pod_name** - This command is used to delete the pod in the Kubernetes cluster.
- **kubectl api-resources** - List down the kubernetes api-resources and it's details
- **kubectl apply -f service.yml** - Create the k8s resources from the yml files.
- **kubectl expose pod pod_name --port=80 --name=nginx-service --type=NodePort** - This command is used to expose the pod in the Kubernetes cluster with NodePort Type.
- **kubectl get svc** - This command is used to get the services in the Kubernetes cluster.
- **kubectl create deployment mydep1 --image=nginx** - This command is used to create a deployment in the Kubernetes cluster.
- **kubectl get deployments** - This command is used to get the deployments in the Kubernetes cluster.
- **kubectl delete deployment mydep1** - This command is used to delete the deployment in the Kubernetes cluster.

### Kubernetes file

- We can use commands to create the pods, deployments, services, etc. But, it's difficult to manage them.
- So, we can use the Kubernetes configuration files to manage them.
- It will be written in the YAML format.
- We can write the configuration in a file and we can use the file to create the pods, deployments, services, and other resources.
- **Example of Kubernetes file:**
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
  labels:
    app: myapp
spec:

  containers:
  - name: mycontainer
    image: nginx
    ports:
    - containerPort: 80
```
- In this above example, we are creating a pod using the Kubernetes configuration file.
- Understand Persistent Volume - https://spacelift.io/blog/kubernetes-persistent-volumes
- Health Probes - https://semaphoreci.com/blog/kubernetes-probes#:~:text=Kubernetes%2C%20the%20industry%2Dleading%20container,pods%20and%20their%20hosted%20applications.
- Kubernetes Services - https://cloud.google.com/kubernetes-engine/docs/concepts/service#:~:text=applications%20using%20services.-,What%20is%20a%20Kubernetes%20Service%3F,contact%20Pods%20in%20the%20Service.
- Stateful vs Stateless App - https://www.redhat.com/en/topics/cloud-native-apps/stateful-vs-stateless
- Benefits of K8s - https://www.ibm.com/blog/top-7-benefits-of-kubernetes/
- history of K8s - https://www.ibm.com/blog/kubernetes-history/
- Deployment Strategies - https://spacelift.io/blog/kubernetes-deployment-strategies

