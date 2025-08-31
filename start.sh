#!/bin/bash

while true; do
    echo "Input number:"
    echo "1 - LS"
    echo "2 - Clear"
    echo "3 - Ping"
    echo "0 - Exit"
    read -r choice

    case $choice in
        1)
            ls
            ;;
        2)
            clear
            ;;
        3)
            ansible -i inventory.ini hosts -m ping --ask-pass

            ;;
        0)
            echo "Exit"
