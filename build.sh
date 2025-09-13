#!/bin/bash
set -e

# Use Python 3.11 explicitly
python3.11 --version

# Upgrade pip and install dependencies
python3.11 -m pip install --upgrade pip
python3.11 -m pip install -r requirements.txt
