# Environment Setup Guide

## Environment Variables

This project is a simple WebView wrapper and doesn't require many environment variables. However, if you need to customize the behavior, you can create a `.env` file in the root directory.

### Optional Environment Variables

```bash
# Website URL (default: https://ailivetranslate.net)
REACT_APP_WEBSITE_URL=https://ailivetranslate.net

# App Configuration
REACT_APP_APP_NAME="AI Live Translate Mobile"
REACT_APP_APP_VERSION="1.0.0"

# Analytics (optional)
REACT_APP_GA_TRACKING_ID=

# Feature Flags
REACT_APP_ENABLE_ANALYTICS=false
REACT_APP_ENABLE_DEBUG_MODE=false
```

### Security Note

All `.env` files are automatically ignored by Git (see `.gitignore`):
- `.env`
- `.env.local`
- `.env.development.local`
- `.env.test.local`
- `.env.production.local`
- `.env.*.local`

This ensures that sensitive information is never committed to the repository.

### Default Configuration

If no environment variables are set, the app will use these defaults:
- Website URL: `https://ailivetranslate.net`
- App Name: "AI Live Translate Mobile"
- Debug Mode: Disabled
- Analytics: Disabled

## Deployment

For Netlify deployment, you can set environment variables in the Netlify dashboard:
1. Go to Site settings > Environment variables
2. Add any required variables
3. Redeploy the site

## Local Development

1. Copy the example environment file:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` with your values

3. Start the development server:
   ```bash
   npm start
   ```

## Production Build

The production build will use the environment variables set at build time:
```bash
npm run build
```
