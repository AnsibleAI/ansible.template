# apt_key deprecated, Use deb822_repository instead!
https://www.google.com/search?q=ansible+apt_key+deprecated

# Solution:
https://www.jeffgeerling.com/blog/2022/aptkey-deprecated-debianubuntu-how-fix-ansible

## quote:
>The new way to do this without adding an extra **gpg --dearmor** task is to use get_url to download the file into the trusted.gpg.d folder with the .asc filename. Therefore the first task above can be replaced with:
```
- name: Add Jenkins apt repository key.
  ansible.builtin.get_url:
    url: "{{ jenkins_repo_key_url }}"
    dest: /etc/apt/trusted.gpg.d/jenkins.asc
    mode: '0644'
    force: true
```

# Doc:
https://docs.ansible.com/ansible/latest/collections/ansible/builtin/deb822_repository_module.html

# Examples:
https://gist.github.com/roib20/27fde10af195cee1c1f8ac5f68be7e9b
