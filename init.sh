dependency(){
  # get submodule:
  git submodule init
  git submodule update
}

link(){
  from=.graph/dependency
  to=ansible/roles/depends
  mkdir -p $to
  
  project=source.RPMFusion
  roles=ansible/roles/*
  
  ln -srf $from/$project/$roles $to
}

install(){
  cd ansible
  ./init.sh
  ansible-playbook uni
}

dependency
