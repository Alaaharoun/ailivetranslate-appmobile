# Fix Iframe Display Issues

## 🚨 Problem
The main website (ailivetranslate.net) is blocking iframe display due to X-Frame-Options settings.

## 🔧 Solutions

### Solution 1: Modify Main Website Security Headers

In the main website (`AILIVETRANSLATEWEB`), update the security headers:

#### For Netlify (netlify.toml):
```toml
[headers]
  for = "/*"
  [headers.values]
    X-Frame-Options = "SAMEORIGIN"
    # or
    X-Frame-Options = "ALLOW-FROM https://app.ailivetranslate.net"
```

#### For Express.js (if using):
```javascript
app.use((req, res, next) => {
  res.setHeader('X-Frame-Options', 'SAMEORIGIN');
  // or
  res.setHeader('X-Frame-Options', 'ALLOW-FROM https://app.ailivetranslate.net');
  next();
});
```

#### For Vite/React (vite.config.ts):
```typescript
export default defineConfig({
  server: {
    headers: {
      'X-Frame-Options': 'SAMEORIGIN'
    }
  }
});
```

### Solution 2: Use Content Security Policy

Add CSP headers to allow iframe:

```toml
[headers]
  for = "/*"
  [headers.values]
    Content-Security-Policy = "frame-ancestors 'self' https://app.ailivetranslate.net"
```

### Solution 3: Alternative Approach - Direct URL

Instead of iframe, redirect to the main site:

```typescript
// In App.tsx
function App() {
  useEffect(() => {
    window.location.href = 'https://ailivetranslate.net';
  }, []);
  
  return <div>Redirecting...</div>;
}
```

## 🎯 Recommended Solution

### Step 1: Update Main Website
1. Go to `AILIVETRANSLATEWEB` project
2. Update `netlify.toml` or server headers
3. Deploy the main website

### Step 2: Test WebView
1. Check if iframe loads correctly
2. Test permissions (camera, microphone)
3. Verify functionality

## ⚠️ Security Considerations

- `SAMEORIGIN`: Allows iframe from same domain
- `ALLOW-FROM`: Allows iframe from specific domain
- Consider security implications before allowing iframe

## 🔍 Testing

After applying fixes:
1. Check browser console for errors
2. Test iframe loading
3. Verify permissions work
4. Test on mobile devices
