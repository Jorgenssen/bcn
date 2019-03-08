#!/bin/bash

sudo systemctl daemon-reload

case $2 in
  all)
    echo -e "\e[33m $1 of bcn cluster and nginx \e[0m"
    for node_name in bcn_node{1..3}; do
      echo -e "$1 of $node_name"
      sudo systemctl $1 $node_name --lines=0
      echo
    done
    echo -e "$1 of nginx"
    sudo systemctl $1 nginx --lines=0
    ;;
  bcn_cluster)
    echo -e "\e[33m $1 of bcn cluster \e[0m"
    for node_name in bcn_node{1..3}; do
      echo -e "$1 of $node_name"
      sudo systemctl $1 $node_name --lines=0
      echo
    done
    ;;
  bcn_node1|bcn_node2|bcn_node3|nginx) 
    echo -e "\e[33m $1 of $2 \e[0m"
    sudo systemctl $1 $2 --lines=0
    ;;
  *)
    echo -e "Usage:\n  bcn <command> <nodename>\nExample:\n  \
bcn restart cluster # restart of all nodes\n  \
bcn status bcn_node1 # show status of node 1"
    ;;
esac
