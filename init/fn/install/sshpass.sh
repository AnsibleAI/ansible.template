main(){
    if ! sshpass &> /dev/null
    then
        install_sshpass
    fi
}

install_sshpass(){
   # Distro
    (lsb_release -a | grep Ubuntu)
    Ubuntu=$?
    (lsb_release -a | grep Fedora)
    Fedora=$?

    if [ $Ubuntu -eq 0 ]
    then
        sudo apt install sshpass -y
    elif [ $Fedora -eq 0 ]
    then
        sudo dnf install sshpass
    fi
}

main