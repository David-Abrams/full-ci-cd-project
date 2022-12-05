#! /bin/sh


#check the respond of server to GET requests. prints out status code "200, 3xx, 5xx, etc"
helth_check_genaral=$(curl --head --location --silent --output /dev/null --write-out "%{http_code}\n" http://nginx:80)
helth_check_post=$(curl -X POST -F 'firstname=davidwalsh' -F 'lastname=something' -F 'email=9200233@gmail.com' -F 'age=20' -F 'bio=something'  --silent --output /dev/null --write-out "%{http_code}\n" http://nginx:80/create/)



echo "${helth_check_genaral}"
echo "${helth_check_post}"


if [ $helth_check_genaral -eq 200 ] && [ $helth_check_post -eq 302 ]; then
    exit 0
else
    exit 1
fi


