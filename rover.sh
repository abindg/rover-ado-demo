sudo mkdir /usr/bin/rover
curl -L -O https://github.com/im2nguyen/rover/releases/download/v0.3.2/rover_0.3.2_linux_amd64.zip
sudo unzip rover_0.3.2_linux_amd64.zip
./rover_v0.3.2 -workingDir "$(Pipeline.Workspace)/terraform-artefacts" -standalone true
ls -lrt