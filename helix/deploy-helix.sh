kubectl create namespace helix
kubectl config set-context --current --namespace=helix
kubectl create secret docker-registry regcred --docker-server= --docker-username= --docker-password= 
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=helix
helm install helix . -f values.yaml
