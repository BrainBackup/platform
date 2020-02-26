#!/usr/bin/env bash

install_python() {
    sleep 20 # This helps to avoid rised when creatig an img
    command sudo || (apt update && apt install sudo)
    sudo apt update -y 
    sudo apt install -y python
}

main() {
  install_python
}

main "$@"