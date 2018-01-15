#! /bin/bash

# 声明数组：　方式一
names[0]="zhangsan"
names[1]="lisi"
echo
echo "names array len: ${#names[@]}"
for k in "${names[@]}";
do
  echo $k
done
echo

# 声明数组：　方式二
echo
cities=("beijing" "shanghai")
echo "cities array len: ${#cities[@]}"
for k in "${cities[@]}";
do
  echo $k
done
echo

# 声明数组：　方式三
echo
cities2=([0]="beijing" [1]="shanghai" [3]="guangzhou")
echo "cities array len: ${#cities2[@]}"
for k in "${!cities2[@]}";
do
  echo $k
  echo $cities2[$k]
done
echo

# 声明数组：　方式四
declare -A types
types[phone1]="iphone"
types[phone2]="huawei"
types[phone3]="xiao mi"
types[air_conditioning1]="mei di"
types[air_conditioning2]="ge li"

echo
echo "types array len: ${#types[@]}"
for k in "${!types[@]}";
do
  echo "$k : ${types[$k]}"
done

# 声明数组：　方式五
# 从外部文件中加载，参考　forcluster.sh