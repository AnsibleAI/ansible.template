# get submodule:
git submodule init
git submodule update

# link:
ln -srf depends/source.RPMFusion/ansible/roles/rpmfusion ansible/roles/

# using:
cd ansible
./init.sh
ansible-playbook uni
