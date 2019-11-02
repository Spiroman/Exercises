#!/bin/bash

if ! type $"python" > dev/null; then
	yes Y | sudo apt install python
fi
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install -U Flask
sudo mkdir -p /var/webapp && cp /tmp/webapp.py /var/webapp
cd /var/webapp && export FLASK_APP=webapp.py && flask run
