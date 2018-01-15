#! /bin/bash

. templates/cluster.env

# 打印数组长度
echo ${#my_env[@]} 

# echo "${my_env[NODE0_IP]}"

echo
for k in "${!my_env[@]}";do
  echo $k
  echo ${my_env[$k]}
  # sed -i "s#${k}#${my_env[${k}]}#g" templates/cluster_copy.env
done