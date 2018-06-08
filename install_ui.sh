#!/bin/bash
printf "module.exports = {\n" > src/js/api/envvars.js

kubectl get service  --namespace=uidp-dev | grep LoadBalancer | grep -v uidp-ui | awk '{
	  split($5,f,":");
	  gsub("-","_",$0);
	  print "  "toupper($1)": '\''"$4":"f[1]"'\'',"
  }' >> src/js/api/envvars.js

printf "};\n" >> src/js/api/envvars.js
