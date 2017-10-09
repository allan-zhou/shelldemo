#! /bin/bash


function rmTestImages(){
    DOCKER_IMAGE_IDS=$(docker images | grep "dev\|none\|test-vp\|peer[0-9]-" | awk '{print $3}')
	echo
        if [ -z "$DOCKER_IMAGE_IDS" -o "$DOCKER_IMAGE_IDS" = " " ]; then
		echo "========== No images available for deletion ==========="
        else
            echo $DOCKER_IMAGE_IDS
            docker rmi -f $DOCKER_IMAGE_IDS
        fi
	echo
}
rmTestImages