#/bin/bash
# This script deploys all backend modules of a list
# Author: Ingolf Kuss, hbz
# Date: Nov. 5th, 2021

list=$1
ip_address=$2
if [ -z "$list" ]; then
  echo "Please pass a module list in the command line, e.g. okapi-install.json"
  exit 0
fi
if [ -z "$ip_address" ]; then
  echo "Please pass the IP address of your deployment server as the second parameter on the command line!"
  exit 0
fi

for module in `sed -e 's/^[ \t]\+"id": "\(.*\)",/ID\1/g' $list | grep "^ID"`; do
  module=${module/#ID}
  echo "Module: $module"
  ./deploy-backend-module.sh $module $ip_address
done

exit 0
