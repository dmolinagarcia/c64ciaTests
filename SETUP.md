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

 . Visual studio code
sudo apt install curl
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


 

