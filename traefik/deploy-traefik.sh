helm repo add traefik https://traefik.github.io/charts
helm repo update
kubectl create namespace traefik
kubectl config set-context --current --namespace=traefik
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=traefik
helm install traefik traefik/traefik -f traefik.values.yaml 
