helm repo add jenkins https://charts.jenkins.io
helm repo update
kubectl create secret docker-registry regcred --docker-server=registry.beafowl.fr --docker-username=beafowl --docker-password=T@mybba0907
kubectl create namespace jenkins
kubectl config set-context --current --namespace=jenkins
kubectl create secret tls beafowl-tls --cert=beafowl.fr_ssl_certificate.cer --key=_.beafowl.fr_private_key.key --namespace=jenkins
helm install jenkins jenkins/jenkins -f jenkins.values.yaml
