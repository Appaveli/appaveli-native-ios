#!/bin/bash

swift build -c release

if [ $? -eq 0 ]; then
    echo "✅ Build successful. Creating symlink..."
    ln -sf $(pwd)/.build/release/appaveli-ios /usr/local/bin/appaveli-ios
    echo "✅ CLI is now available as 'appaveli-ios' globally"
else
    echo "❌ Build failed. Check for Swift errors."
fi
