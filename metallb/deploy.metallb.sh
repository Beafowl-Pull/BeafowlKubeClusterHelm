helm repo add metallb https://metallb.github.io/metallb                                                                                                                           kubernetes-admin@kubernetes/docker-registry ⎈ 
helm repo update
kubectl create namespace metallb
kubectl config set-context --current --namespace=metallb
kubectl apply -f ipaddresspool.yaml
kubectl apply -f l2advertisement.yaml 
helm install metallb metallb/metallb
