[ ! -d "app.source.Snapcraft" ] && git submodule add https://github.com/Unicorn-OS/app.source.Snapcraft.git

ln -srf app.source.Snapcraft/ansible/roles/Snapcraft ../ansible/roles/dependency/
