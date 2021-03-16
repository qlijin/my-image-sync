docker pull k8s.gcr.io/kube-apiserver:v1.18.16
docker tag k8s.gcr.io/kube-apiserver:v1.18.16 registry.cn-beijing.aliyuncs.com/qlijin/lijinrepo/kube-apiserver:v1.18.16
docker push registry.cn-beijing.aliyuncs.com/qlijin/lijinrepo/kube-apiserver:v1.18.16
