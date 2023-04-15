# graph https://www.baeldung.com/linux/ssh-copy-id-automate
main(){
    cd fn
    source install/sshpass.sh
    copy_sshkey_to_node
    cd -
}

copy_sshkey_to_node(){
    sshpass -p "$init_password" ssh-copy-id $host
}

main