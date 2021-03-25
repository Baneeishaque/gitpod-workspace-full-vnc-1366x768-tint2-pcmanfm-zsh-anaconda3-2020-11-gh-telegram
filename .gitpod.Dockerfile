FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-anaconda3-2020-11-gh

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     libegl1-mesa-dev | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

RUN cd $HOME \
 && wget https://telegram.org/dl/desktop/linux -O tsetup.tar.xz \
 && sudo tar -xvf tsetup.tar.xz -C /usr/local/ \
 && rm tsetup.tar.xz
 
