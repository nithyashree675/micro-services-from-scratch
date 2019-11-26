Objective: Micro serviced orchestrator provisioning with Infrastructure as code (Terraform and Kubernetes) and manifests for service (web app flacka nd mysql db) deployments. 

1. Creating base infrastructure on Azure.
Creates master instance
As part of custom data which initializing the instances kubernetes cluster is formed

Commands to deploy:

terraform apply

2. Manifests for sql db and flask web app to be deployed in kubernetes cluster

export KUBECONFIG=/path/where/kube/cert/is/copied/to #or pass it in args --kubeconfig=${KUBECONFIG}

kubectl apply -f <manifest-files>


Multi master set up for high availability can be configured with appropriate synchronous methods.
Considering network resources are already created in this case and mentioned in variables. If not a VPC, subnets and firewall will be required.
The apps are reachable outside the cluster with node IP and node Port mentioned, from with cluster using the service name and target ports
