main(){
    if ! sshpass &> /dev/null
    then
        # install_sshpass
        try
    fi
}

install_sshpass(){
    # Distro
    Ubuntu=`lsb_release -a | grep Ubuntu`


    if ! 
    then
        sudo apt install sshpass -y
    else ! lsb_release -a | grep Fedora
        sudo dnf install sshpass
    fi
}

try(){
    # Distro
    (lsb_release -a | grep Ubuntu)
    Ubuntu=$?
    (lsb_release -a | grep Fedora)
    Fedora=$?

    echo Hello
    echo $Ubuntu
    echo $Fedora
}

main