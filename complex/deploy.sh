docker build -t 10001024/multi-client:latest -t 10001024/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t 10001024/multi-server:latest -t 10001024/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t 10001024/multi-worker:latest -t 10001024/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push 10001024/multi-client:latest
docker push 10001024/multi-server:latest
docker push 10001024/multi-worker:latest

docker push 10001024/multi-client:$SHA
docker push 10001024/multi-server:$SHA
docker push 10001024/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=10001024/multi-server:$SHA
kubectl set image deployments/client-deployment client=10001024/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=10001024/multi-worker:$SHA