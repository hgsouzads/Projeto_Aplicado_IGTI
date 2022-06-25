# EKS AWS

cd infra/aws

# init terraform
terraform init

# see the execution plan
terraform plan

# apply the configs
terraform apply

# variables environment
aws eks list-clusters --region us-east-1
# output
<CLUSTER_NAME>

# update kubeconfig context
aws eks --region us-east-1 update-kubeconfig --name <CLUSTER_NAME>

# access cluster
kubectl get nodes
# output
<Nodes>

# destroy terraform
terraform destroy
