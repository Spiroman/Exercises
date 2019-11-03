#!/bin/bash

error_report(){
	echo "Execution stopped, details can be found at /tmp/errorlog.txt"
	"$1" >& /tmp/errorlog.txt
}

wrapper(){
	eval $1
	if [ $? -ne 0 ]; then
		error_report "$1"
		exit
	fi
}

main(){
	if ! type $"python" > dev/null; then
		wrapper "yes Y | sudo apt install python"
	fi
	wrapper "sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py"
	wrapper "sudo python get-pip.py"
	wrapper "sudo pip install -U Flask"
	wrapper "sudo mkdir -p /var/webapp && cp /tmp/webapp.py /var/webapp"
	wrapper "cd /var/webapp && export FLASK_APP=webapp.py && flask run"
}

main
