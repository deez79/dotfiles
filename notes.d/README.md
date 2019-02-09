~~~
        +---------------------------------------------------+
        | Title:        arch.dotfiles                       |
        | Author:       deez79                              |
        | Date:         11/08/2018                          |
        +---------------------------------------------------+
~~~
# Table of Contents
* About
* Todo

# About:
This is my first attempt at an arch i3 customization collection.

# Todo:
* create start script
  * creates file structure
  * symbolic links folders 
  * installs applications
* 

# Helpful Hints:
## Fedora
* To install i3-gaps
    $ sudo dnf copr enable gregw/i3desktop
    $ sudo dnf install i3-gaps
* Polybar needs to be compiled from soure:
    * make sure you have all dependancies (the devel versions)
        * cairo
        * libxcb
        * python2
        * xcb-proto
        * xcb-util-image
        * xcb-util-wm
        * clang
        * gcc
        * xcb-util-cursor
        * xcb-util-xrm
        * xcb-xkb
        * alsa-lib
        * libpulse
        * jsoncpp
        * libmpdclient
        * libcurl
        * libnl-genl
    * download polybar-<version>.tar from https://github.com/jaagr/polybar/releases
    $ tar -xvf polybar-<version>.tar
    $ cd polybar
    $ mkdir build
    $ cd build
    $ cmake ..
    $ make -j$(nproc)
    $ sudo make install
     
*
