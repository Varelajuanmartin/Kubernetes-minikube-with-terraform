# Kubernetes with Minikube deployed with Terraform

## Prerequisites

Install Kubernetes
https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

Install Minikube
https://minikube.sigs.k8s.io/docs/start/

Install Virtualbox

Install Terraform

## Deploying kubernetes in minikube with terraform

Start minikube and start terraform
```
terraform init
minikube start --driver=virtualbox
```

main.tf creates a namespace kubernetes-terraform, it creates a deployment with 2 replicas and it creates a service on port 80
```
terraform plan
terraform apply
```

We can see the namespace kubernetes-terraform created
```
kubectl get ns
```

We can see 2 pods, the deployment and the service
```
kubectl -n kubernetes-terraform get all
```

To see the nginx start page
```
kubectl -n kubernetes-terraform port-forward svc/nginx 8080:80
```
In a browser we can go to localhost:8080

