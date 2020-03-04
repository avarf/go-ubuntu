
./get-go.sh

docker build -f Dockerfile . -t avarf/go-ubuntu
docker push avarf/go-ubuntu:latest