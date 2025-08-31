#!/bin/bash

while true; do
    echo "Input number:"
    echo "1 - Scan network "
    echo "2 - Clear"
    echo "3 - Ping"
    echo "0 - Exit"
    read -r choice

    case $choice in
        1)
             nmap -sn 10.177.0.0/24 -oG - | awk '/Up$/{print $2}' | sed '1i[myservers]' > inventory.ini
            ;;
        2)
            clear
            ;;
        3)
            ansible -i inventory hosts -m ping --ask-pass

           ;;
        99)    
            clear
            ;;
        0)
            echo "Exit"
