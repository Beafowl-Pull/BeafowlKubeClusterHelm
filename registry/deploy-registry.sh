helm repo add twuni https://helm.twun.io
helm repo update
kubectl create namespace registry
kubectl config set-context --current --namespace=registry
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=registry
kubectl create secret generic auth-secret --from-file=htpasswd --namespace registry
helm install registry twuni/docker-registry -f registry.value.yaml 
