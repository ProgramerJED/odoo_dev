#!/usr/bin/env bash

# Install dependencies
apt-get update
apt-get install -y --no-install-recommends fontconfig libssl-dev libxrender-dev wget xz-utils

# Download and extract wkhtmltopdf
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox-0.12.5_linux-generic-amd64.tar.xz
tar xf wkhtmltox-0.12.5_linux-generic-amd64.tar.xz
cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*
