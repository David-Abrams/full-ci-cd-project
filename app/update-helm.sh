#!/bin/sh
NEW_TAG_1="$1"
git config --global user.email "9200200@gmail.com"
git config --global user.name "David Abrams"
rm -fr .git
mkdir abc && cd abc
git clone ${HELM_REPO}
cd k8s
ls -la
sed -E -i.back "s,image-app: .*,image-app: ${ECR_REPO}/${APP_IMAGE}:${NEW_TAG_1},g" values.yaml
sed -E -i.back "s,image-nginx: .*,image-nginx: ${ECR_REPO}/${NGINX_IMAGE}:${NEW_TAG_1},g" values.yaml 
git add values.yaml
git commit --allow-empty -m "v.${NEw_TAG_1}: Updated the image in the values.yaml file. (the ${APP_IMAGE} image was updated to the latest version)"
git push
