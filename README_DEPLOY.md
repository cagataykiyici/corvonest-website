# CorvoNest Website Deployment Guide

## 🚀 Quick Deploy Instructions

### Method 1: Using Deploy Script (Recommended)
```bash
# Navigate to project directory
cd /Users/cagatay/dev/corvoweb

# Run the deploy script
./deploy.sh
```

### Method 2: Manual Firebase Command
```bash
cd /Users/cagatay/dev/corvoweb
firebase deploy --only hosting
```

## 📝 Update Workflow

1. **Edit your website**
   - Make changes to `public/index.html`
   - Test locally if needed: `firebase serve --only hosting`

2. **Deploy changes**
   ```bash
   ./deploy.sh
   ```

3. **Verify deployment**
   - Check: https://corvonest-website.web.app
   - Should see changes within 30 seconds

## 🛠️ Troubleshooting

### If deploy script fails:
```bash
# Re-authenticate with Firebase
firebase login --reauth

# Try deploying again
./deploy.sh
```

### If you see permission errors:
```bash
# Make script executable
chmod +x deploy.sh
```

### If you're in wrong directory:
```bash
# Navigate to project root
cd /Users/cagatay/dev/corvoweb

# Verify you're in the right place
ls -la | grep firebase.json

# Run deploy script
./deploy.sh
```

## 📊 Firebase Resources

- **Live Website:** https://corvonest-website.web.app
- **Firebase Console:** https://console.firebase.google.com/project/copartners-project/hosting
- **Project Config:** `firebase.json`
- **Website Files:** `public/` directory

## ⚡ Pro Tips

- The script includes error checking and helpful messages
- Always run from project root directory (`/Users/cagatay/dev/corvoweb`)
- Deployment typically takes 30-60 seconds
- Changes appear almost immediately after successful deployment