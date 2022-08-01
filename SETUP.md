Entorno de desarrollo de pruebas para CIA en C64
-----------------------------------------------------------------------
 . Crear VM en virtualbox
 . Instalar debian 11
 . Instalar Guest Additions
 . Crear (si no está ya) el repo https://github.com/dmolinagarcia/c64ciaTests
 . Software install
sudo apt install git
sudo apt update
 . Conexión al repositorio

ssh-keygen -t ed25519 -C "dmolina@gmail.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519
>> añadir la clave a github
git config --global user.email "dmolina@gmail.com"
git config --global user.name "Daniel Molina"
git clone git@github.com:dmolinagarcia/c64ciaTests.git

