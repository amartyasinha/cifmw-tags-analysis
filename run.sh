#/usr/bin/env bash

cd "$(dirname "$0")"


if [ ! -d "venv" ]; then
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create virtual environment."
        exit 1
    fi
fi

source venv/bin/activate
pip3 install -r requirements.txt

jupyter lab tags-analysis.ipynb

trap deactivate EXIT
