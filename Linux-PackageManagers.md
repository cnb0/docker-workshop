
1. [Ubuntu apt package manager](https://cheatsheet.dennyzhang.com/cheatsheet-apt-a4)
2. https://www.digitalocean.com/community/tutorials/package-management-basics-apt-yum-dnf-pkg


-------------------------------
## Install auto tools on Linux
-------------------------------
Installing from repositories is always prefered unless you need the last version of autotools. In that case you will have to download it manually and install it manually. GNU autotools are three packages: Autoconf, Automake and Libtool. Here are the steps to manually install it:
```
cd /usr/local/src
Autoconf:

wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz 
tar xf autoconf*
cd autoconf-2.69
sh configure --prefix /usr/local
make install
Automake:

wget http://ftp.gnu.org/gnu/automake/automake-1.15.tar.gz
tar xf automake*
cd automake-1.15
sh configure --prefix /usr/local
make install
Libtool:

wget http://mirror.jre655.com/GNU/libtool/libtool-2.4.6.tar.gz
tar xf libtool*
cd libtool-2.4.6
sh configure --prefix /usr/local
make install 
```
Most importantly You don't need autotools installed to run ./configure, that it's a key feature of autotools. On the other hand if you are not given the configure script you will need autotools installed to generate it.

Note make install will internally call make. Thus, there is no need in this case of calling make. Normally, Autotools expect you to call make without sudo privileges and make install with sudo. In this case for simplicity I skipped this guideline. It's (or is it?) fairly reasonable to trust there is no malware in the autotools generated Makefile.
