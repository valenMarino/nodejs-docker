# nodejs-docker

## Docker
### Create image
docker build --tag 'nodejsapi' .
### Run container
docker run --name api -p 6060:6060 nodejsapi
