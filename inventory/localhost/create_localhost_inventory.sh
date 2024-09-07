sudo mkdir -p /etc/ansible
sudo chown -R $USER:$USER /etc/ansible

echo "localhost ansible_connection=local ansible_become_password=u" > /etc/ansible/hosts
