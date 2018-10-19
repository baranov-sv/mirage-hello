# Set up proper locale
sudo locale-gen "en_US.UTF-8"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Upgrade apt manager
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# install packages
sudo apt-get -y install ocaml opam qemu-system syslinux

opam install -y mirage
opam install -y lwt
opam install -y lwt_ppx
