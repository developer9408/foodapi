#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/foodapi 

#navigate into our working directory where we have all our github files
cd /home/ec2-user/foodapi

#add npm and node to path
# loads nvm bash_completion (node is in path now)

#install node mode
sudo apt-get install docker.io 

#start our node app in the background
docker build -t foodapi .
docker run -it -d -p 5000:5000 foodapi