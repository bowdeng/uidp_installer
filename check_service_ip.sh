kubectl get service  --namespace=uidp-dev | grep LoadBalancer | awk '{ split($5,f,":"); print $1"="$4":"f[1] }'
