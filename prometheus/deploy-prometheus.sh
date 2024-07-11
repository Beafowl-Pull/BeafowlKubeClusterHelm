helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create ns prometheus
kubectl config set-context --current --namespace=prometheus
helm install prometheus prometheus-community/prometheus -f prometheus.values.yaml
helm repo add grafana https://grafana.github.io/helm-charts 
helm repo update
kubectl create ns grafana
kubectl config set-context --current --namespace=grafana
helm install grafana grafana/grafana -f grafana.values.yaml
