kubectl create namespace helix
kubectl config set-context --current --namespace=helix
kubectl create secret docker-registry regcred --docker-server=registry.beafowl.fr --docker-username=beafowl --docker-password=T@mybba0907
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=helix
helm install helix . -f values.yaml
