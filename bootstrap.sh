#!/usr/bin/env bash

cd /home/vagrant

yum update
yum install -y vim

if [ $(hostname) == "ansible-master" ]; then
  yum install -y epel-release
  yum install -y ansible
fi
