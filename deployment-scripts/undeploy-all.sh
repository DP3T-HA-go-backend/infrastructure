#kubectl delete -f scripts/6.traefik-ui.yaml
kubectl delete -f scripts/5.trefik-ingr.yaml
kubectl delete -f scripts/4.traefik-svc.yaml
kubectl delete -f scripts/3.covid-depl.yaml
kubectl delete -f scripts/2.traefik-rbac.yaml
kubectl delete -f scripts/1.traefik-deployment.yaml
