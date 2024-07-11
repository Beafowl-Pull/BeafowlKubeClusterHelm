helm repo add openebs https://openebs.github.io/charts
helm repo update
kubectl create namespace openebs
kubectl config set-context --current --namespace=openebs
kubectl apply -f openebs.sc.yaml
helm install openebs --namespace openebs openebs/openebs
