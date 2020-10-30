#!/bin/bash
IFS="="
while read -r source target; do
    echo "############### import $source"
    docker pull $source
    echo tagging to $target
    docker tag $source $target
    echo push
    docker push $target
    echo Done
done < $1
unset IFS