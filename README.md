# CorvoNest Website

Expert Generalist DNA for Mobile Innovation

## Firebase Hosting Deployment

### Prerequisites
- Firebase CLI installed (already done)
- GCP project with Firebase enabled
- Google Workspace domain connected

### Initial Setup

1. **Project Configuration**: Already configured for project `copartners-project`

2. **Authenticate with Firebase**:
   ```bash
   firebase login
   ```

3. **Create Separate Hosting Site** (multiple sites in one project):
   ```bash
   # Create a new site for CorvoNest website
   firebase hosting:sites:create corvonest-website
   ```

4. **Verify Site Configuration**:
   The firebase.json is already configured for site "corvonest-website"

### Deployment

1. **Deploy CorvoNest Website**:
   ```bash
   firebase deploy --only hosting:corvonest-website
   ```

2. **View your site**:
   - CorvoNest site: `https://corvonest-website--copartners-project.web.app`
   - Your Flutter app remains on: `https://copartners-project.web.app` (or your custom domain)

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

### Multiple Sites Management

This project uses Firebase multiple sites feature:
- **CorvoNest Website**: `corvonest-website` site
- **Your Flutter App**: Default site (unchanged)

**Commands for Multiple Sites**:
```bash
# List all sites
firebase hosting:sites:list

# Deploy only CorvoNest site
firebase deploy --only hosting:corvonest-website

# Deploy all sites
firebase deploy

# View site URLs
firebase hosting:sites:get corvonest-website
```

### Performance Features
- Global CDN
- Automatic image optimization headers
- Clean URLs (no .html extensions)
- Optimized caching policies