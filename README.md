# k8s-private-ingress

ref: https://docs.microsoft.com/en-us/azure/aks/ingress-internal-ip#:~:text=The%20ingress%20controller%20is%20configured,over%20the%20single%20IP%20address


## docker pull secret
```sh
kubectl create secret docker-registry skicr \
    --namespace ingress \
    --docker-server=skicr.azurecr.io \
    --docker-username=skicr \
    --docker-password=mVCK=HgFUzOKTpkTPS8N1QpoKJ8wUrxJ
```

```
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install ingress ingress-nginx/ingress-nginx \
     --namespace ingress \
     -f values.yaml \
     --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
     --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux
```
