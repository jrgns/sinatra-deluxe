#sudo apt-get update

# Install Ruby dependencies
apt-get install -y make libnotify4

# Install RVM
if [ ! -f /usr/local/rvm/scripts/rvm ]
then
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -sSL https://get.rvm.io | bash -s stable
    addgroup vagrant rvm
fi
source /usr/local/rvm/scripts/rvm

# Install ruby 2
rvm install ruby 2.1

# Install the base gems
cd /vagrant
rvm use 2.1
gem install bundler

# Check the gems
bundle install
