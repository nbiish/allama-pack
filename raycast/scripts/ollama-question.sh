#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ollama-question
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description get a simple question answered fast
# @raycast.author nbiish
# @raycast.authorURL https://raycast.com/nbiish

# @raycast.argument1 { "type": "text", "placeholder": "question" }

model="codegemma"
echo "codegemma:"
echo ""
ollama run $model """$1"""

