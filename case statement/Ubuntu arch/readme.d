---
# https://stackoverflow.com/questions/30637054/case-statement-for-setting-var-in-ansible-jinja2
# Using case template to set architecture:

- name: get Architecture
  set_fact:
    arch: "{{ {'arm': 'arm64', 'x86_64': 'amd64'}[ansible_architecture] | default('') }}"

- name: Add specified repository into sources list
  ansible.builtin.apt_repository:
    repo: "deb [arch={{arch}}] https://apt.releases.hashicorp.com {{ansible_distribution_release}} main"
    state: present
