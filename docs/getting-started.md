# Getting Started

* TOC
{:toc}

This is how you'll get started with Kompose!

There are three different guides depending on your container orchestrator as well as operating system.

For beginners and the most compatibility, follow the _Minikube and Kompose_ guide.

## Minikube and Kompose

In this guide, we'll deploy a sample `docker-compose.yaml` file to a Kubernetes cluster.

Requirements:
  - [minikube](https://github.com/kubernetes/minikube)
  - [kompose](https://github.com/kubernetes/kompose)

__Start `minikube`:__

If you don't already have a Kubernetes cluster running, [minikube](https://github.com/kubernetes/minikube) is the best way to get started.

```sh
$ minikube start
Starting local Kubernetes v1.7.5 cluster...
Starting VM...
Getting VM IP address...
Moving files into cluster...
Setting up certs...
Connecting to cluster...
Setting up kubeconfig...
Starting cluster components...
Kubectl is now configured to use the cluster
```

__Download an [example Docker Compose file](https://raw.githubusercontent.com/kubernetes/kompose/master/examples/docker-compose.yaml), or use your own:__

```sh
wget https://raw.githubusercontent.com/kubernetes/kompose/master/examples/docker-compose.yaml
```

__Convert your Docker Compose file to Kubernetes:__

Run `kompose convert` in the same directory as your `docker-compose.yaml` file.

```sh
$ kompose convert                           
INFO Kubernetes file "frontend-service.yaml" created         
INFO Kubernetes file "redis-master-service.yaml" created     
INFO Kubernetes file "redis-slave-service.yaml" created      
INFO Kubernetes file "frontend-deployment.yaml" created      
INFO Kubernetes file "redis-master-deployment.yaml" created  
INFO Kubernetes file "redis-slave-deployment.yaml" created 
```

Alternatively, you can convert and deploy directly to Kubernetes with `kompose up`.

```sh
$ kompose up
We are going to create Kubernetes Deployments, Services and PersistentVolumeClaims for your Dockerized application. 
If you need different kind of resources, use the 'kompose convert' and 'kubectl create -f' commands instead. 

INFO Successfully created Service: redis          
INFO Successfully created Service: web            
INFO Successfully created Deployment: redis       
INFO Successfully created Deployment: web         

Your application has been deployed to Kubernetes. You can run 'kubectl get deployment,svc,pods,pvc' for details.
```


__Access the newly deployed service:__

Now that your service has been deployed, let's access it.

If you're using `minikube` you may access it via the `minikube service` command.

```sh
$ minikube service frontend
```

Otherwise, use `kubectl` to see what IP the service is using:

```sh
$ kubectl describe svc frontend
Name:                   frontend
Namespace:              default
Labels:                 service=frontend
Selector:               service=frontend
Type:                   LoadBalancer
IP:                     10.0.0.183
LoadBalancer Ingress:   123.45.67.89
Port:                   80      80/TCP
NodePort:               80      31144/TCP
Endpoints:              172.17.0.4:80
Session Affinity:       None
No events.

```

Note: If you're using a cloud provider, your IP will be listed next to `LoadBalancer Ingress`.

If you have yet to expose your service (for example, within GCE), use the command:

```sh
kubectl expose deployment frontend --type="LoadBalancer" 
```

To check functionality, you may also `curl` the URL.

```sh
$ curl http://123.45.67.89
```