install: 
	ansible-playbook -i ./inventory/webservers.ini ./playbook/install_lamp.yml

roles:
	sudo ansible-galaxy install -r ./roles/requirements.yml --force

lamp:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/lamp.yml

shutdown:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/shutdown.yml

web_interface:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/web_interface.yml
