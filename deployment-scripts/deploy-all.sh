kubectl apply -f scripts/1.traefik-deployment.yaml
kubectl apply -f scripts/2.traefik-rbac.yaml
kubectl apply -f scripts/3.covid-depl.yaml
kubectl apply -f scripts/4.traefik-svc.yaml
kubectl apply -f scripts/5.trefik-ingr.yaml
#kubectl apply -f scripts/6.traefik-ui.yaml
