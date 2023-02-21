#!/bin/bash 

sudo apt install -y curl
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

rm -rf ~/.rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

# exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
# exec $SHELL



source ~/.zshrc

rbenv install 3.2.0
rbenv global 3.2.0


ruby -v

gem install bundler


git config --global color.ui true
git config --global user.name "Liang Chen"
git config --global user.email "chenliang.info@EMAIL.com"
# ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"


gem install rails -v 7.0.4

rbenv rehash


rails -v
