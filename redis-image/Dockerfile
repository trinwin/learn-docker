# Use an existing Docker image as a base
FROM alpine

# Download and install a dependency
RUN apk add --update gcc
RUN apk add --update redis

# Tell the iamge what to do when it starts as a container
CMD [ "redis-server" ]