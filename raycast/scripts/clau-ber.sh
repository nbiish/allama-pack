#!/bin/bash
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title clau-ber!
# @raycast.mode fullOutput
# Optional parameters:
# @raycast.icon 🦾
# @raycast.description Generate a response using the ANTHROPIC API
# @raycast.author nbiish
# @raycast.authorURL https://raycast.com/nbiish
# @raycast.argument1 { "type": "text", "placeholder": "question or input" }

# Check if Python is installed
if ! command -v python3 &>/dev/null; then
    echo "Python 3 is not installed"
    exit 1
fi

# Check if venv exists, if not create it
if [ ! -d "./venv" ] ; then
    python3 -m venv venv > /dev/null 2>&1
fi

# Activate the venv
source venv/bin/activate

# Install requirements
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt > /dev/null 2>&1
else
    echo "requirements.txt not found"
    exit 1
fi

# Run the Python script
python3 clau-ber.py "$1"

# Deactivate the venv
deactivate