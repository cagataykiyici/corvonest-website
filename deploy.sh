#!/bin/bash

# CorvoNest Website Deploy Script
# Simple one-command deployment to Firebase Hosting
#
# HOW TO RUN:
# 1. Open Terminal (Cmd + Space → type "Terminal" → Enter)
# 2. Navigate to project: cd /Users/cagatay/dev/corvoweb
# 3. Run script: ./deploy.sh
#
# TROUBLESHOOTING:
# - Script won't run? Try: chmod +x deploy.sh && ./deploy.sh
# - Authentication error? Try: firebase login --reauth && ./deploy.sh
# - Wrong directory? Try: cd /Users/cagatay/dev/corvoweb && ./deploy.sh

echo "🚀 Deploying CorvoNest website..."
echo "📁 Project: /Users/cagatay/dev/corvoweb"
echo "🌐 Target: https://corvonest-website.web.app"
echo ""

# Check if we're in the right directory
if [ ! -f "firebase.json" ]; then
    echo "❌ Error: firebase.json not found!"
    echo "   Make sure you're running this from the project root directory"
    exit 1
fi

# Check if public/index.html exists
if [ ! -f "public/index.html" ]; then
    echo "❌ Error: public/index.html not found!"
    echo "   Make sure your website files are in the public/ directory"
    exit 1
fi

# Deploy to Firebase
echo "⬆️  Uploading to Firebase Hosting..."
firebase deploy --only hosting

# Check if deployment was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deployment successful!"
    echo "🌐 Your website is live at: https://corvonest-website.web.app"
    echo "📊 Firebase Console: https://console.firebase.google.com/project/copartners-project/hosting"
    echo ""
    echo "🎉 CorvoNest website updated successfully!"
else
    echo ""
    echo "❌ Deployment failed!"
    echo "💡 Try running 'firebase login --reauth' if you see authentication errors"
    exit 1
fi