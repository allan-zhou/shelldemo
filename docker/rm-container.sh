#! /bin/bash

# 删除所有的docker container
COUNT=0
function rmContainers(){
    CONTAINER_IDS=$(docker ps -aq)
	echo
        if [ -z "$CONTAINER_IDS" -o "$CONTAINER_IDS" = " " ]; then
            echo "========== No containers available for deletion =========="
        else
            for container_id in $CONTAINER_IDS
            do
                let "COUNT += 1" 
            done
            echo "========== 共 $COUNT 个容器 =========="
            docker rm -f $CONTAINER_IDS
            echo "所有容器以成功删除"
        fi
	echo
}

rmContainers