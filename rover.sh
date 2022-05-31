sudo mkdir /usr/bin/rover
curl -L -O https://github.com/im2nguyen/rover/releases/download/v0.3.2/rover_0.3.2_linux_amd64.zip
sudo cp rover_0.3.2_linux_amd64.zip /usr/bin/rover/
sudo unzip /usr/bin/rover/rover_0.3.2_linux_amd64.zip
export PATH=$PATH:/usr/bin/rover
/usr/bin/rover/rover_v0.3.2 -standalone true
ls -lrt