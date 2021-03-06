#!/bin/bash

# This Script Installs Ruby, RubyGems, and Travis CLI

echo ""
echo "[Provision-Script] Installing Ruby and RubyGems"
echo ""
yum install -y ruby rubygems ruby-devel

echo ""
echo "[Provision-Script] Installing Travis CLI"
echo ""
gem install travis --no-rdoc --no-ri

echo ""
echo "[Provision-Script] Creating Symlink for Travis CLI"
echo ""
ln -s /usr/local/bin/travis /usr/bin/travis
