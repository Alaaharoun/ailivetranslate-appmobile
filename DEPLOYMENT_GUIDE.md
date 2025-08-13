# Deployment Guide - AI Live Translate Mobile WebView

## 🚀 Quick Deployment Options

### Option 1: Netlify (Recommended)

1. **Connect to GitHub:**
   - Go to [Netlify](https://netlify.com)
   - Click "New site from Git"
   - Choose GitHub and select `ailivetranslate-appmobile` repository

2. **Configure Build Settings:**
   - **Build command:** `npm run build`
   - **Publish directory:** `build`
   - **Node version:** 18 (auto-detected from netlify.toml)

3. **Custom Domain Setup:**
   - Go to Site settings > Domain management
   - Add custom domain: `app.ailivetranslate.net`
   - Configure DNS as instructed by Netlify

4. **Environment Variables (Optional):**
   - Go to Site settings > Environment variables
   - Add any required variables (see ENVIRONMENT_SETUP.md)

### Option 2: Vercel

1. **Connect Repository:**
   - Go to [Vercel](https://vercel.com)
   - Import GitHub repository
   - Select `ailivetranslate-appmobile`

2. **Build Configuration:**
   - Framework Preset: Create React App
   - Build Command: `npm run build`
   - Output Directory: `build`

3. **Deploy:**
   - Click "Deploy"
   - Vercel will automatically build and deploy

### Option 3: GitHub Pages

1. **Install gh-pages:**
   ```bash
   npm install --save-dev gh-pages
   ```

2. **Update package.json:**
   ```json
   {
     "homepage": "https://alaaharoun.github.io/ailivetranslate-appmobile",
     "scripts": {
       "predeploy": "npm run build",
       "deploy": "gh-pages -d build"
     }
   }
   ```

3. **Deploy:**
   ```bash
   npm run deploy
   ```

## 📱 Mobile App Integration

### React Native WebView

```javascript
import { WebView } from 'react-native-webview';

<WebView
  source={{ uri: 'https://app.ailivetranslate.net' }}
  style={{ flex: 1 }}
  allowsInlineMediaPlayback={true}
  mediaPlaybackRequiresUserAction={false}
  javaScriptEnabled={true}
  domStorageEnabled={true}
/>
```

### Flutter WebView

```dart
import 'package:webview_flutter/webview_flutter.dart';

WebView(
  initialUrl: 'https://app.ailivetranslate.net',
  javascriptMode: JavascriptMode.unrestricted,
  allowsInlineMediaPlayback: true,
  mediaPlaybackRequiresUserGesture: false,
)
```

### Capacitor/Cordova

```javascript
// In your main component
<ion-content>
  <iframe
    src="https://app.ailivetranslate.net"
    style="width: 100%; height: 100%; border: none;"
    allow="microphone; camera; geolocation"
  ></iframe>
</ion-content>
```

## 🔧 Build Process

### Local Build
```bash
# Install dependencies
npm install

# Build for production
npm run build

# Test build locally
npx serve -s build
```

### Build Output
The build process creates:
- `build/` - Production-ready files
- `build/static/` - Optimized assets
- `build/index.html` - Main HTML file

## 🌐 Domain Configuration

### Netlify DNS Setup
1. **A Record:**
   - Name: `app`
   - Value: `75.2.60.5` (Netlify's IP)

2. **CNAME Record:**
   - Name: `app`
   - Value: `your-site-name.netlify.app`

### SSL Certificate
- Netlify provides automatic SSL certificates
- HTTPS is enabled by default
- Redirects HTTP to HTTPS automatically

## 📊 Performance Optimization

### Built-in Optimizations
- **Code Splitting:** Automatic with React
- **Asset Compression:** Gzip enabled
- **Caching:** Static assets cached for 1 year
- **Minification:** CSS and JS minified

### Additional Optimizations
- **CDN:** Netlify's global CDN
- **Image Optimization:** Automatic with Netlify
- **Preloading:** Critical resources preloaded

## 🔒 Security Configuration

### Security Headers (netlify.toml)
- `X-Frame-Options: SAMEORIGIN`
- `X-Content-Type-Options: nosniff`
- `X-XSS-Protection: 1; mode=block`
- `Referrer-Policy: strict-origin-when-cross-origin`

### Iframe Security
- Sandbox permissions configured
- Cross-origin restrictions in place
- Secure communication protocols

## 📈 Monitoring & Analytics

### Netlify Analytics
- Built-in analytics dashboard
- Page views and performance metrics
- Real-time monitoring

### Google Analytics (Optional)
1. Add tracking ID to environment variables
2. Configure in Netlify dashboard
3. Monitor user behavior and performance

## 🚨 Troubleshooting

### Common Issues

1. **Build Fails:**
   - Check Node.js version (18+ required)
   - Verify all dependencies installed
   - Check for TypeScript errors

2. **Iframe Not Loading:**
   - Verify website URL is accessible
   - Check CORS settings on target site
   - Ensure sandbox permissions are correct

3. **Domain Not Working:**
   - Verify DNS configuration
   - Check SSL certificate status
   - Ensure domain is properly linked

### Support
- **GitHub Issues:** Report bugs in repository
- **Netlify Support:** For deployment issues
- **Documentation:** Check README.md and guides

## 🎯 Success Metrics

### Deployment Checklist
- [ ] Build completes successfully
- [ ] Site loads without errors
- [ ] Iframe displays target website
- [ ] Mobile responsive design works
- [ ] Custom domain configured
- [ ] SSL certificate active
- [ ] Performance optimized
- [ ] Security headers applied

### Performance Targets
- **Load Time:** < 3 seconds
- **Lighthouse Score:** > 90
- **Mobile Performance:** > 85
- **Accessibility:** > 95

---

**Ready to deploy?** Follow the steps above and your AI Live Translate Mobile WebView will be live at `app.ailivetranslate.net`! 🚀
