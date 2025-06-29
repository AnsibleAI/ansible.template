mkdir -p roles/dev 
echo "*/" > roles/dev/.gitignore

cd roles/dev
repos=(
"git@github.com:Unicorn-OS/ansible-role-Ubuntu-Disable-Unattended-Upgrade.git"
"git@github.com:Unicorn-OS/ansible-role-Gnome-Ergonomic-tweaks.git"
)

for repo in "${repos[@]}"; do
  echo $repo | grep -o -E "/(.*)"
  #git clone $item
done
