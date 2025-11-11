#!/bin/bash

# Fix pnpm permissions issue
echo "Attempting to fix pnpm permissions..."

# Check if pnpm exists and fix permissions
if [ -f "/usr/local/bin/pnpm" ]; then
    echo "Found pnpm at /usr/local/bin/pnpm"
    chmod +x /usr/local/bin/pnpm
    echo "Made pnpm executable"
else
    echo "pnpm not found at /usr/local/bin/pnpm"
    
    # Try to find pnpm in other locations
    PNPM_PATH=$(which pnpm 2>/dev/null)
    if [ -n "$PNPM_PATH" ]; then
        echo "Found pnpm at: $PNPM_PATH"
        chmod +x "$PNPM_PATH"
        echo "Made pnpm executable at $PNPM_PATH"
    else
        echo "pnpm not found in PATH. Installing pnpm..."
        npm install -g pnpm
    fi
fi

# Test pnpm
echo "Testing pnpm..."
pnpm --version && echo "pnpm is working!" || echo "pnpm still not working"