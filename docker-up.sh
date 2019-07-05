docker build -t docker-test:1.0 ./
docker run --name polaris-ports -it docker-test:1.0 su - polaris
# -u polaris でログインできるが、それだと.bash_profileが実行されない
