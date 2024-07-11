kubectl create namespace trace
kubectl config set-context --current --namespace=trace
kubectl create secret docker-registry regcred --docker-server= --docker-username= --docker-password=
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=trace
helm install trace . -f values.yaml
