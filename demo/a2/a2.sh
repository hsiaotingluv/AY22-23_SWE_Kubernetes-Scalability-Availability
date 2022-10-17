kind create cluster --name kind-1 --config ../../k8s/kind/cluster-config.yaml
# To verify cluster is running
# docker ps
# kubectl get nodes
# kubectl cluster-info

kind load docker-image nginx-nodeserver --name kind-1
kubectl apply -f ../../k8s/manifests/k8s/backend-deployment.yaml
# To verify pods are running
# kubectl get po -lapp=backend --watch
# kubectl get deployment/backend --watch

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
# To verify if ingress-nginx is ready
# kubectl -n ingress-nginx get deploy -w

kubectl apply -f ../../k8s/manifests/k8s/backend-service.yaml
# To verify if service is working
# kubectl get services backend
# kubectl get services

kubectl apply -f ../../k8s/manifests/k8s/backend-ingress.yaml
# To verify if ingress is working
# kubectl get ingress

# To verify that app is running on server with ingress
# kubectl describe ingress backend
# kubectl port-forward service/backend 8080:8080
