
get_ip_address_of_vm(){
    virsh net-dhcp-leases default | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
}