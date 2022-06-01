#az login --service-principal -u "33aaa935-be73-441c-800e-03710bcee72c" -p "DXvbHp178UchaK5G.ytSM_RH_9BOyX4k9t" --tenant "12709065-6e6c-41c9-9e4d-fb0a436969ce"
sudo mkdir /usr/bin/rover
curl -L -O https://github.com/im2nguyen/rover/releases/download/v0.3.2/rover_0.3.2_linux_amd64.zip
sudo unzip rover_0.3.2_linux_amd64.zip
./rover_v0.3.2 -workingDir $1 -standalone true
ls -lrt
git init
git config --global user.email "abin_dutta_gupta@yahoo.co.in"
git config --global user.name "abindg"
git config --global user.password "Eastbengal@123"
git checkout -b main
git add rover.zip
git commit -m "Added rover.zip"
git remote add origin https://github.com/abindg/rover-ado-demo.git
git push https://"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"@github.com/abindg/rover-ado-demo.git