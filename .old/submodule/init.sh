# initial Create:
createSubmodule(){
  cd depends
  git submodule add https://github.com/Unicorn-OS/source.RPMFusion.git
  cd -
}

# get submodule:
git submodule init
git submodule update

# link:
ln -srf depends/source.RPMFusion/ansible/roles/rpmfusion ansible/roles/

# using:
cd ansible
./init.sh
ansible-playbook uni
