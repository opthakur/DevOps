@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y wget nano notepad2

choco install -y consolez cmder conemu 

choco install -y virtualbox

choco install -y vagrant

choco install -y git --params "/GitAndUnixToolsOnPath /WindowsTerminal"

refreshenv

bash

cd ~

curl -sSL https://raw.githubusercontent.com/roybhaskar9/files/master/setupvagrant.sh | bash

curl -sSL https://gitlab.com/roybhaskar9/devops/raw/master/Lab/LaptopLab/Windows/version10/labfolders.sh | bash