docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID ankitd002/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID ankitd002/$JOB_NAME:latest

docker push ankitd002/$JOB_NAME:$BUILD_ID

docker push ankitd002/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID ankitd002/$JOB_NAME:$BUILD_ID ankitd002/$JOB_NAME:latest
