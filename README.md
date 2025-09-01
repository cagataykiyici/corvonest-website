# CorvoNest Website

Expert Generalist DNA for Mobile Innovation

## Firebase Hosting Deployment

### Prerequisites
- Firebase CLI installed (already done)
- GCP project with Firebase enabled
- Google Workspace domain connected

### Initial Setup

1. **Update Project ID**: Edit `.firebaserc` and replace `YOUR_GCP_PROJECT_ID` with your actual GCP project ID

2. **Authenticate with Firebase**:
   ```bash
   firebase login
   ```

3. **Enable Firebase Hosting** in your GCP project:
   ```bash
   firebase init hosting
   ```
   - Select existing project
   - Set public directory as `public`
   - Configure as single-page app: Yes
   - Don't overwrite existing index.html

### Deployment

1. **Deploy to Firebase**:
   ```bash
   firebase deploy
   ```

2. **View your site**:
   - Temporary URL: `https://YOUR_PROJECT_ID.web.app`
   - Or: `https://YOUR_PROJECT_ID.firebaseapp.com`

### Custom Domain Setup

1. **Add Custom Domain** in Firebase Console:
   - Go to Firebase Console > Hosting
   - Click "Add custom domain"
   - Enter your domain (e.g., corvonest.com)
   - Follow verification steps

2. **DNS Configuration** (automatic with Google domains):
   - Firebase will automatically configure DNS for Google Workspace domains
   - SSL certificate will be provisioned automatically

### File Structure
```
corvoweb/
├── public/                 # Deployment directory
│   ├── index.html         # Main website
│   └── corvo-draft-logo.jpeg
├── firebase.json          # Firebase configuration
├── .firebaserc           # Project configuration
└── README.md             # This file
```

### Performance Features
- Global CDN
- Automatic image optimization headers
- Clean URLs (no .html extensions)
- Optimized caching policies