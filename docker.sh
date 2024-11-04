cd /var/lib/jenkins/workspace/Maven-Project
sudo docker build . -t adimhshwr/prodimg:$BUILD_NUMBER
sudo docker push adimhshwr/prodimg:$BUILD_NUMBER
sudo chmod 777 docker.sh
sudo bash docker.sh
sudo docker container run -it --name prodcontainer -d adimhshwr/prodimg:$BUILD_NUMBER
