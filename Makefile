install: 
	ansible-playbook -i ./inventory/webservers.ini ./playbook/install_lamp.yml

roles:
	sudo ansible-galaxy install -r requirements.yml --force

lamp:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/lamp.yml
