    1  sudo dnf install gnome-tweaks
    2  sudo dnf install git
    3  clear
    4  sudo dnf copr enable gregw/i3desktop
    5  sudo dnf install i3-gaps
    6  #sudo dnf install cairo-devel libxcb-devel xcb-util-image-devel xcb-util-wm-devel clang-devel xcb-util-cursor-devel xcb-util-xrm-devel alsa-lib-devel jsoncpp
    7  ls
    8  cd Documents/
    9  ls
   10  git clone https://github.com/deez79/dotfiles
   11  sudo dnf install stow
   12  cd dotfiles/
   13  ls
   14  stow -v -t ~/ common.d
   15  rm -rf ~/.bash_profile 
   16  stow -v -t ~/ common.d
   17  source ~/.bash_profile 
   18  sudo dnf copr enable gregw/i3desktop
   19  sudo dnf install i3-gaps
   20  sudo dnf install cairo-devel libxcb-devel xcb-util-image-devel xcb-util-wm-devel clang-devel xcb-util-cursor-devel xcb-util-xrm-devel alsa-lib-devel jsoncpp-devel libmpdclient-devel libcurl-devel xcb-proto xcb-xkb libpulse libnl-genl
   21  sudo dnf install cairo-devel libxcb-devel xcb-util-image-devel xcb-util-wm-devel clang-devel xcb-util-cursor-devel xcb-util-xrm-devel alsa-lib-devel jsoncpp-devel libmpdclient-devel libcurl-devel xcb-proto
   22  sudo dnf install libpulse xcb-xkb libnl-genl
   23  cd ~/Downloads/
   24  ls
   25  tar -xvf polybar-3.3.0.tar 
   26  cd polybar/
   27  mkdir build
   28  cd build/
   29  cmake ..
   30  sudo dnf install gcc
   31  cmake ..
   32  sudo dnf install clang-devel
   33  ls
   34  rm -rf CMake*
   35  cmake ..
   36  ls 
   37  rm -rf CMake*
   38  cd
   39  ls
   40  sudo dnf install cmake-devel
   41  sudo dnf install cmake
   42  sudo dnf install i3status rxvt-unicode dmenu network-manager-applet noto-fonts ranger i3lock lightdm lightdm-gtk-greeter unzip feh nmap compton imageMagick python-pip python-pywal
   43  sudo dnf install i3status rxvt-unicode dmenu network-manager-applet ranger i3lock lightdm lightdm-gtk-greeter unzip feh nmap compton ImageMagick python-pip python-pywal
   44  sudo dnf install i3status rxvt-unicode dmenu network-manager-applet ranger i3lock lightdm lightdm-gtk-greeter unzip feh nmap compton ImageMagick python-pip
   45  sudo dnf install openssh vlc python-pip3 w3m neofetch htop tmux ntp transmission-gtk jre-openjdk cmatrix npm mplayer
   46  sudo dnf install openssh w3m neofetch htop tmux ntp transmission-gtk jre-openjdk cmatrix npm
   47  sudo dnf update
   48  cd Downloads/
   49  ls
   50  cd polybar/
   51  cd build/
   52  cmake ..
   53  make -j$(nproc)
   54  sudo make install
   55  sudo dnf install libpulse xcb-xkb libnl-genl
   56  sudo dnf vlc python-pywal python-pip3
   57  sudo dnf install vlc python-pywal python-pip3
   58  sudo dnf install vlc python-pywal python-pip3 npm mplayer
   59  sudo dnf install vlc python-pywal python-pip3 npm mplayer pavucontrol
   60  sudo dnf install pavucontrol
   61  vim /etc/hostname 
   62  sudo isudo
   63  sudo 
   64  suiisudio dnf install gvimd
   65  sudear
   66  exit
   67  ls
   68  clear
   69  ls
   70  sudo dnf install gvim
   71  cd Documents/dotfiles/
   72  ls
   73  cd oldInstallerScripts.d/
   74  ls
   75  vim dotfile_installer.sh 
   76  clear
   77  ls
   78  cd ..
   79  cd common.d/
   80  ls -lah
   81  vim .vimrc 
   82  exit
   83  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   84  clear
   85  cd
   86  vim /etc/hostname 
   87  sudo vim /etc/hostname 
   88  exit
   89  ls
   90  sudo dnf install vlc
   91  exit
   92  cd Documents/dotfiles/
   93  stow -v -t ~/ i3-wm.d
   94  exit
   95  ls
   96  vim Documents/dotfiles/common.d/.vimrc 
   97  clear
   98  exit
   99  cd Pictures/
  100  ls
  101  git clone pi@192.168.1.201:~/GitUSB/wallpapers.git
  102  ssh-add ~/.ssh/id_rsa_pizza 
  103  git clone pi@192.168.1.201:~/GitUSB/wallpapers.git
  104  pip3 install pywal
  105  pip3 install pywal--user
  106  pip3 install pywal --user
  107  exit
  108  eval "$(ssh-agent -s)"
  109  ssh-add ~/.ssh/id_rsa_pizza 
  110  chmod 600 ~/.ssh/id_rsa_pizza 
  111  ssh-add ~/.ssh/id_rsa_pizza 
  112  ssh pi@192.168.1.201
  113  exit
  114  sudo dnf install dnf-plugins-core
  115  sudo dnf config-manager     --add-repo     https://download.docker.com/linux/fedora/docker-ce.repo
  116  sudo dnf install docker-ce docker-ce-cli containerd.io
  117  sudo docker run hello-world
  118  sudo systemctl enable docker
  119  sudo systemctl start docker
  120  sudo docker run hello-world
  121  exit
  122  cd ~/.fonts
  123  mkdir ~/.fonts
  124  exit
  125  ls
  126  ls -lah
  127  ssh deez79@192.168.1.155
  128  clear
  129  ssh-agent
  130  tmux
  131  ranger
  132  sudo dnf install python-pywal
  133  sudo dnf install python3
  134  sudo dnf install python-pip3
  135  python pip3 install pywal
  136  python pip install pywal
  137  clear
  138  cd Downloads/
  139  ls
  140  unzip fontawesome-free-5.7.2-desktop.zip 
  141  ls
  142  cd fontawesome-free-5.7.2-desktop/
  143  ls
  144  cd otfs/
  145  ls
  146  cp *.otf* ~/.fonts/
  147  cd ..
  148  ls
  149  cd ..
  150  ls
  151  mv *.tff* ~/.fonts/
  152  mv *.ttf* ~/.fonts/
  153  exit
  154  ls
  155  cd Documents/
  156  ls
  157  history > history.md
