sudo apt-get update
sudo apt-get install -y python3-pip python3-dev python-virtualenv
virtualenv -p python3 .venv
source ./.venv/bin/activate
pip install -e git+https://github.com/bigmstone/robotapi.git#egg=robotapi
deactivate
