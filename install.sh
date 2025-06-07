#!/bin/bash

echo "🔨 Building release binary..."
swift build -c release

if [ $? -eq 0 ]; then
  echo "✅ Build successful."

  if [ -w /usr/local/bin ]; then
    echo "🔗 Linking to /usr/local/bin (no sudo needed)"
    ln -sf $(pwd)/.build/release/appaveli-ios /usr/local/bin/appaveli-ios
  else
    echo "🔒 Linking to /usr/local/bin (requires sudo)"
    sudo ln -sf $(pwd)/.build/release/appaveli-ios /usr/local/bin/appaveli-ios
  fi

  echo "✅ CLI is now available as 'appaveli-ios'"
else
  echo "❌ Build failed. Fix Swift errors first."
fi
