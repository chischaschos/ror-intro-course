#!/bin/bash

export LC_ALL="en_GB.UTF-8"
echo "Updating system"
apt-get update

echo "Installing base libraries"
apt-get install -y git-core zlib1g zlib1g-dev sqlite3  libsqlite3-dev ack exuberant-ctags curl openssl libssl-dev

echo "Installing Ruby step 1: Installing rbenv"
type rbenv > /dev/null 2>&1
if [ ! $? -eq 0 ]; then
  cd ~
  git clone https://github.com/sstephenson/rbenv ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  exec bash
fi

echo "Installing Ruby step 2: Installing ruby build"
type ruby-build > /dev/null 2>&1
if [ ! $? -eq 0 ]; then
  git clone https://github.com/sstephenson/ruby-build
  cd ruby-build
  sudo ./install.sh
fi

echo "Installing Ruby step 3: Installing ruby 1.9.3-p194"
type ruby > /dev/null 2>&1
if [ ! $? -eq 0 ]; then
  cd ~
  rbenv install 1.9.3-p194
  rbenv global 1.9.3-p194
fi

echo "Setting up vim with janus https://github.com/carlhuda/janus"
if [ -e ~/.vim ]; then
  curl -Lo- http://bit.ly/janus-bootstrap | bash
fi

echo "Installing base gems"
gem install bundler rails sqlite3-ruby execjs therubyracer
rbenv rehash
