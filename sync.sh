#!/bin/bash

# docker pull k8s.gcr.io/kube-apiserver:v1.18.16
# docker tag k8s.gcr.io/kube-apiserver:v1.18.16 registry.cn-beijing.aliyuncs.com/qlijin/lijinrepo/kube-apiserver:v1.18.16
# docker push registry.cn-beijing.aliyuncs.com/qlijin/lijinrepo/kube-apiserver:v1.18.16

file="images_list.txt"

if [ -f "$file" ]
then
  echo "$file found."
  new_registry="registry.cn-beijing.aliyuncs.com/qlijin/lijinrepo/"

  while IFS='/' read -r key value
  do
    echo "${key}=${value}"
    image=${key}/${value}
    docker pull ${image}

    new_image=${new_registry}/${image}
    # new_image=${new_registry}/${value}

    docker tag ${image} ${new_image}
    docker push ${new_image}
  done < "$file"

else
  echo "$file not found."
fi