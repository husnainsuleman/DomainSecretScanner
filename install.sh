#!/bin/bash

git clone https://github.com/m4ll0k/SecretFinder.git

cd SecretFinder 

pip install -r requirements.txt # Install dependencies

# go installation

sudo apt-get install golang -y

go install github.com/projectdiscovery/katana/cmd/katana@latest # katana clone

sudo cp ~/go/bin/katana /bin/

echo "All Done" 

