#/bin/bash
# This script deploys one backend module via Okapi
# Author: Ingolf Kuss, hbz
# Date: Nov. 5th, 2021

module=$1
ip_address=$2
if [ -z "$module" ]; then
  echo "Please pass a module name, including the module version number, on the command line (e.g. \"mod-circulation-22.0.3\")"
  exit 0
fi
if [ -z "$ip_address" ]; then
  echo "Please pass the IP address of your deployment server as the second parameter on the command line!"
  exit 0
fi

cat > $module-deployment-descriptor.json <<END
{
  "srvcId": "$module",
  "nodeId": "$ip_address"
}
END

curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$module-deployment-descriptor.json http://localhost:9130/_/discovery/modules

exit 0
