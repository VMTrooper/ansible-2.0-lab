# Update package repo sources
sudo apt-get -qq update

# Install pre-req apt packages
sudo apt-get install -qqy git vim python-pip python-dev build-essential libxslt1-dev libxml2-dev

# Get Ansible 2.0 RC 2
# Find latest releases here: http://releases.ansible.com/ansible/
# sudo wget -q http://releases.ansible.com/ansible/ansible-2.0.0-0.7.rc2.tar.gz

# Install pre-req pip package
sudo pip install -q netifaces pyyaml jinja2

# Clone Ansible 2.0 Stable from Git
git clone https://github.com/ansible/ansible.git
cd ansible
git checkout stable-2.0
git submodule update --init

# Update motd to remind user to run environment setup
echo "
Remember to configure environment for ansible
. ansible/hacking/env-setup
" | sudo tee -a /etc/motd