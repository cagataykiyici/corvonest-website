# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

CorvoNest website is a static HTML website hosted on Firebase Hosting. The project uses a single-page design with embedded CSS and JavaScript, focusing on modern web standards and performance optimization.

## Architecture

### Core Structure
- **Static Website**: Single HTML page (`public/index.html`) with embedded CSS/JS
- **Firebase Hosting**: Deployed to `corvonest-website` site within `copartners-project`
- **Support Form**: Web3Forms integration for contact functionality (`public/support.html`)
- **Legal Pages**: Privacy policy, terms, and cookie policy in `/public/`

### Design System
- **CSS Variables**: Consistent theme using CSS custom properties in `:root`
- **Typography**: Inter font for UI, JetBrains Mono for code/technical elements
- **Color Scheme**: Dark theme with accent colors (green, blue, pink gradient)
- **Responsive**: Mobile-first design with breakpoints at 768px, 1024px, 480px

### Key Components
- **Hero Section**: DNA network visualization with floating nodes
- **Services Grid**: Two-column layout for partnership offerings
- **Product Showcase**: Asymmetric layout showcasing Luca app
- **Support Form**: Web3Forms integration with captcha and validation

## Development Commands

### Deployment
```bash
# Quick deploy (recommended)
./deploy.sh

# Manual Firebase deploy
firebase deploy --only hosting

# Deploy and serve locally for testing
firebase serve --only hosting
```

### Authentication
```bash
# Re-authenticate if needed
firebase login --reauth
```

### Site Management
```bash
# List all Firebase sites
firebase hosting:sites:list

# Get site details
firebase hosting:sites:get corvonest-website
```

## Configuration

### Firebase Configuration
- **Project**: `copartners-project`
- **Site**: `corvonest-website`
- **Domain**: corvonest.com (configured via Firebase Console)
- **Caching**: Optimized headers for images (1 year), CSS/JS (1 year), HTML (1 hour)

### Web3Forms Integration
- **Access Key**: Configured in `support.html`
- **Endpoint**: `https://api.web3forms.com/submit`
- **Features**: Built-in captcha, spam protection, email delivery
- **CORS**: Requires `Accept: application/json` header for AJAX submissions

## File Organization

```
public/
├── index.html          # Main website page
├── support.html        # Contact support form
├── privacy-policy.html # Legal documentation
├── terms.html         # Terms of use
├── cookie-policy.html  # Cookie policy
└── LOGO/              # Brand assets and logos
```

### Important Files
- `firebase.json`: Hosting configuration with headers and rewrites
- `deploy.sh`: Automated deployment script with error checking
- `.firebaserc`: Project configuration linking to `copartners-project`

## Styling Conventions

### CSS Architecture
- Embedded styles in `<style>` tags within HTML
- CSS custom properties for theming
- BEM-like naming for component classes
- Mobile-first responsive design

### Brand Colors
```css
--accent-primary: #00ff88    /* Green */
--accent-secondary: #ff0066  /* Pink */
--accent-tertiary: #0066ff   /* Blue */
--gradient-dna: linear-gradient(135deg, ...)
```

## Support Form Details

### Required Fields
- Application: Dropdown (CorvoNest Corporate, Luca)
- Category: Dropdown (Technical, GDPR & Data Deletion, Payments, Legal, Other)
- Email: Validated email input
- Message: Multi-line text area

### Form Behavior
- Web3Forms handles email delivery to `support@corvonest.com`
- JavaScript handles form submission with proper CORS headers
- Success/error messaging displayed inline
- Form reset on successful submission

## Performance Optimizations

- Global CDN via Firebase Hosting
- Optimized caching headers (images: 1 year, HTML: 1 hour)
- Clean URLs enabled (no .html extensions)
- Image optimization headers
- Minified and embedded CSS/JS for faster loading