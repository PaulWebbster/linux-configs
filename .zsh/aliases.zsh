#ssh adresses
TYWIN='pawel@tywin.ict.pwr.wroc.pl'
MYDEVIL='magnar@s0.mydevil.net'
QUADY='pawel@quady.weber.torun.pl'
MYDEVILWEB='magnar@web0.mydevil.net'

#ssh aliases
alias mydevil="ssh magnar@s0.mydevil.net"
alias mydevilweb="ssh magnar@web0.mydevil.net"
alias quady="ssh pawel@quady.weber.torun.pl"
alias tywin="ssh tywin.ict.pwr.wroc.pl"

# Add ssh key to server
add_ssh_key() {
    ssh-copy-id "$*"
}

# Remote ls
rls() {
    ssh $1 'ls -l' $2   
}

# Copy from know remote
rcp() {
    if [ $1 = "-h" ]
    then 
        echo 'Copy from remote'
        echo '\n Usage: rcp $know_host $Host_path $our_path'
    else
        scp -r $1':'$2 $3
    fi
}

# Xilinx aliases
xilinx() {
    emulate sh -c 'source /opt/Xilinx/13.3/ISE_DS/settings64.sh'
    export PATH=$PATH:/opt/Xilinx/13.3/ISE_DS/alternatives/
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/Xilinx/13.3/ISE_DS/ISE/X11R6/lib/lin64
    export CLASSPATH=/home/pawel/ProjectHeatTools/rapidSmith/jars
}

rapidsmith() {
    xilinx
    export CLASSPATH=$CLASSPATH:/home/pawel/Development/JGenerilo/src
    export RAPIDSMITH_PATH=/opt/rapidSmith
}

alias idea="/opt/idea-IU-133.1122/bin/idea.sh"

#alias xilinx="emulate sh -c 'source /opt/Xilinx/13.3/ISE_DS/settings64.sh'"

#VPN
alias vpn="sudo openvpn --config ~/mydevil_vpn/client.ovpn --ca ~/mydevil_vpn/ca.crt"

#System aliases
alias ls="ls -lh --color"
alias lsa="ls -lha"
alias java="/opt/oracle-java/jdk1.7.0_51/bin/java"
alias android-connect="mtpfs -o allow_other /media/GalaxyS"
alias android-disconnect="fusermount -u /media/GalaxyS"
