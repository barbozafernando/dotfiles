#!/bin/bash

TMP_DIR=/tmp
FILENAME=snx_install_linux30.sh
DOWNLOAD_URL="https://dl3.checkpoint.com/paid/72/72c2c91791690927da0586ec873430cf/snx_install_linux30.sh?HashKey=1697655848_c59829b257db5943351fc8574ede0255&xtn=.sh"

remove_installed_snx() {
    cd $HOME/usr/bin
    sudo chmod +x snx_uninstall.sh && sudo sh snx_uninstall.sh
}

check_snx_installed () {
  which snx
  if [$? -eq 0]; then
    echo -n "Removing installed snx"
    remove_installed_snx;
  fi
  exit 1
}

check_curl_installed () {
  which curl
  if [$? != 0]; then
    echo -n "Installing curl"
    sudo apt get install curl -y
  fi
  exit 1
}

install_snx_dependencies() {
  sudo apt get install libpam0g:i386 libx11-6:i386 libstdc++6:i386 libstdc++5:i386 libnss3-tools -y

  if [$? -eq 0]; then
    echo -n "Dependencies installed successfully"
  fi

  echo "Error when installing dependencies" > &2
  exit 1
}

main() {
  #check_snx_installed

  install_snx_dependencies
  check_curl_installed

  cd ${TMP_DIR} && curl ${DOWNLOAD_URL} > ${FILENAME}
  chmod +x ${FILENAME}
}

main
