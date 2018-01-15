#! /bin/bash

# ip=$(cat templates/local.env | grep my_env | awk -F '=' '{print $2}')
# echo $ip
sed -i '1d' templates/file
# echo `pwd`
# cat templates/file