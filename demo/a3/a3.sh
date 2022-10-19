kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

kubectl apply -f ../../k8s/manifests/k8s/backend-hpa.yaml

kubectl apply -f ../../k8s/manifests/k8s/backend-zone-aware-deployment.yaml
