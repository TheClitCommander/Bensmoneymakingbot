#!/bin/bash

# Ensure directories exist
mkdir -p /Users/bendickinson/Desktop/Trading:BenBot/trading_bot/config

# Restore AI keys
cp /Users/bendickinson/Desktop/Trading:BenBot/temp_keys/ai_keys.yaml /Users/bendickinson/Desktop/Trading:BenBot/trading_bot/config/

# Restore OpenAI service files
cp /Users/bendickinson/Desktop/Trading:BenBot/temp_keys/openaiService.ts /Users/bendickinson/Desktop/Trading:BenBot/new-trading-dashboard/src/services/openaiService.ts
cp /Users/bendickinson/Desktop/Trading:BenBot/temp_keys/openai-direct.ts /Users/bendickinson/Desktop/Trading:BenBot/new-trading-dashboard/src/services/openai-direct.ts

# Copy trading API keys if not already present
cp /Users/bendickinson/Desktop/Trading:BenBot/temp_keys/trading_config.yaml /Users/bendickinson/Desktop/Trading:BenBot/trading_bot/config/trading_config.yaml

# Check if benbot_with_openai.html exists and update it
if [ -f "/Users/bendickinson/Desktop/Trading:BenBot/benbot_with_openai.html" ]; then
  # Use sed to replace the API key placeholder
  sed -i '' 's/const OPENAI_API_KEY = "YOUR_OPENAI_API_KEY".*/const OPENAI_API_KEY = "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";/' /Users/bendickinson/Desktop/Trading:BenBot/benbot_with_openai.html
fi

echo "API keys have been restored to their appropriate locations."
echo "You can now run the smoke tests to verify your setup."
