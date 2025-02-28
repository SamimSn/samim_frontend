echo "\n\n\n\n------------------------------------\nRunning: sudo git checkout main\n------------------------------------\n\n\n\n"
sudo git checkout main

echo "\n\n\n\n------------------------------------\nRunning: sudo git pull\n------------------------------------\n\n\n\n"
sudo git pull

echo "\n\n\n\n------------------------------------\nRunning: cd /projects/samim_frontend\n------------------------------------\n\n\n\n"
cd /projects/samim_frontend

echo "\n\n\n\n------------------------------------\nRunnin: sudo pm2 delete "samim_frontend"\n------------------------------------\n\n\n\n"
sudo pm2 delete "samim_frontend"

echo "\n\n\n\n------------------------------------\nRunnin: sudo pm2 save --force\n------------------------------------\n\n\n\n"
sudo pm2 save --force

echo "\n\n\n\n------------------------------------\nRunning: sudo npm install --frozen-lockfile\n------------------------------------\n\n\n\n"
sudo npm install --frozen-lockfile

echo "\n\n\n\n------------------------------------\nRunning: sudo npm run build\n------------------------------------\n\n\n\n"
sudo npm run build

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 start "npm -- start -p 43239" --name "samim_frontend"\n------------------------------------\n\n\n\n"
sudo pm2 start "npm -- start -p 43239" --name "samim_frontend"

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 save\n------------------------------------\n\n\n\n"
sudo pm2 save

echo "\n\n\n\n------------------------------------\nRunning: sudo pm2 startup\n------------------------------------\n\n\n\n"
sudo pm2 startup