roles:
	sudo ansible-galaxy install -r ./roles/requirements.yml --force

lamp:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/lamp.yml

shutdown:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/shutdown.yml

web_interface:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/web_interface.yml 

update_site:
	ansible-playbook -i ./inventory/webservers.ini ./playbook/web_interface.yml --tags update_site 


lamp_local:
	ansible-playbook -i ./inventory/localservers.ini ./playbook/lamp.yml

web_interface_local:
	ansible-playbook -i ./inventory/localservers.ini ./playbook/web_interface.yml 

osm_local:
	ansible-playbook -i ./inventory/localservers.ini ./playbook/osm.yml 

.PHONY:	roles
