dependencies(){
  # get submodule:
  git submodule init
  git submodule update

  # link:
  to=ansible/roles/depends
  mkdir -p $to
  ln -srf ansible/depends/source.RPMFusion/ansible/roles/rpmfusion $to
}

install(){
  cd ansible
  ./init.sh
  ansible-playbook uni
}

dependencies
