printf "module.exports = {\n"

localip=`kubectl cluster-info | grep "Kubernetes master"| awk '{ gsub( "/","",$6); split( $6, ip, ":"); print ip[2] }'`

kubectl get service  --namespace=uidp-dev | grep LoadBalancer | grep -v uidp-ui | awk -v localip="$localip" '{
	  split($5,f,":");
	  gsub("-","_",$0);
	  print "  "toupper($1)": '\''"localip":"f[1]"'\'',"
  }'

printf "};\n"
