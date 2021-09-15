#!/bin/bash

sudo apt update

sudo apt install software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.7

sudo apt update

sudo apt install python3-pip

python3.7 -m pip install mysql-connector-python

python3.7 -m pip install python-dotenv

sudo apt install git

sudo apt install npm

sudo apt install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


