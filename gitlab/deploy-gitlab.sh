helm repo add twuni https://helm.twun.io
helm repo update
kubectl create namespace gitlab
kubectl config set-context --current --namespace=gitlab
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=gitlab
helm upgrade --install gitlab gitlab/gitlab -f gitlab.values.yaml 
