dep_graph=.graph/dependency
dep_name=Snapcraft
dep_url=https://github.com/Unicorn-OS/$dep_name.git
dep_path=$dep_graph/$dep_name

add_dependency(){
  if [ ! -d $dep_path ]; then
    cd $dep_graph
    git submodule add $dep_url
    cd -
  fi
}

link_dependency_roles(){
  ln -srf .graph/dependency/Snapcraft/ansible/roles/* ansible/roles/dependency/
}
