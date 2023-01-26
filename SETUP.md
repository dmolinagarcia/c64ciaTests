Entorno de desarrollo de pruebas para CIA en C64
-----------------------------------------------------------------------
 . Crear VM en virtualbox
 . Instalar debian 11
 . Instalar Guest Additions
 . Crear (si no está ya) el repo https://github.com/dmolinagarcia/c64ciaTests
 . Software install

sudo tee /etc/apt/sources.list<<EOF
deb http://deb.debian.org/debian/ bullseye main
deb-src http://deb.debian.org/debian/ bullseye main

deb http://security.debian.org/debian-security bullseye-security main contrib
deb-src http://security.debian.org/debian-security bullseye-security main contrib

deb http://deb.debian.org/debian/ bullseye-updates main contrib
deb-src http://deb.debian.org/debian/ bullseye-updates main contrib

deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security bullseye/updates main contrib non-free
deb-src http://deb.debian.org/debian-security bullseye/updates main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

deb http://deb.debian.org/debian bullseye-backports main contrib non-free
deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free
EOF


sudo apt update
sudo apt install git
sudo apt update
sudo apt upgrade
 . Conexión al repositorio

ssh-keygen -t ed25519 -C "dmolina@gmail.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519
>> añadir la clave a github
git config --global user.email "dmolina@gmail.com"
git config --global user.name "Daniel Molina"
git clone git@github.com:dmolinagarcia/c64ciaTests.git

 . Visual studio code
sudo apt install curl make
curl -sSL https://packages.microsoft.com/keys/microsoft.asc -o microsoft.asc
gpg --no-default-keyring --keyring ./ms_vscode_key_temp.gpg --import ./microsoft.asc
gpg --no-default-keyring --keyring ./ms_vscode_key_temp.gpg --export > ./ms_vscode_key.gpg
sudo mv ms_vscode_key.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code

 . Integración con GITHUB
Instalar el plugin
Autenticar con github
Probar el repo

 . Instalar VICE y ROMS
sudo apt install vice
cd ~/Descargas
wget http://www.zimmers.net/anonftp/pub/cbm/crossplatform/emulators/VICE/vice-3.3.tar.gz
tar -zxvf vice-3.3.tar.gz
cd vice-3.3/data
sudo cp -vR * /usr/share/vice/
cd
rm -rf  ~/Descargas/vice*

 . Instalar compiladores
 sudo apt install acme dasm xa65 gcc 64tass cc65

 . Instalar exomizer
cd
wget https://bitbucket.org/magli143/exomizer/get/d748ae4c4248.zip
unzip d748ae4c4248.zip 
cd magli143-exomizer-d748ae4c4248
cd src
make
sudo ln -s $(pwd)/exomizer /usr/bin/exomizer
sudo ln -s $(pwd)/exobasic /usr/bin/exobasic




