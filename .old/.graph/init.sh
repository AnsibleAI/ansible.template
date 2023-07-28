dependencies(){
  # get submodule:
  git submodule init
  git submodule update
}

install(){
  cd ansible
  ansible-playbook uni
}

dependencies
