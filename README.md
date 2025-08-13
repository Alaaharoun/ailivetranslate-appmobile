# AI Live Translate Mobile WebView

This is a simple React application that serves as a WebView wrapper for the AI Live Translate website (https://ailivetranslate.net).

## 🎯 Purpose

This project creates a mobile-friendly web application that displays the main AI Live Translate website in a full-screen iframe, making it suitable for:
- Mobile web browsers
- Progressive Web App (PWA) deployment
- WebView integration in mobile apps

## 🚀 Features

- **Full-screen WebView**: Displays the main website in a responsive iframe
- **Mobile-optimized**: Designed for mobile devices and touch interfaces
- **Clean interface**: No additional UI elements, just the website content
- **Cross-platform**: Works on all modern browsers and devices

## 🛠️ Technical Stack

- **React 19**: Latest React version with TypeScript
- **TypeScript**: For type safety and better development experience
- **CSS3**: Modern styling with full viewport coverage
- **Responsive Design**: Adapts to different screen sizes

## 📱 Mobile Features

- **Full viewport**: Takes up 100% of screen width and height
- **Touch-friendly**: Optimized for touch interactions
- **No scrollbars**: Clean, app-like experience
- **Fast loading**: Minimal overhead, loads the main site directly

## 🚀 Getting Started

### Prerequisites
- Node.js (version 16 or higher)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Alaaharoun/ailivetranslate-appmobile.git
cd ailivetranslate-appmobile
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm start
```

4. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### Building for Production

```bash
npm run build
```

This creates a `build` folder with optimized production files.

## 🌐 Deployment

### Netlify Deployment

This project is configured for easy deployment on Netlify:

1. **Build command**: `npm run build`
2. **Publish directory**: `build`
3. **Domain**: `app.ailivetranslate.net`

### Manual Deployment

1. Build the project: `npm run build`
2. Upload the contents of the `build` folder to your web server
3. Configure your server to serve `index.html` for all routes

## 📋 Project Structure

```
ailivetranslate-appmobile/
├── public/
│   ├── index.html
│   └── favicon.ico
├── src/
│   ├── App.tsx          # Main WebView component
│   ├── App.css          # Full-screen styling
│   ├── index.tsx        # App entry point
│   └── index.css        # Global styles
├── package.json
└── README.md
```

## 🔧 Configuration

### Website URL
The target website URL is configured in `src/App.tsx`:
```typescript
src="https://ailivetranslate.net"
```

### Iframe Permissions
The iframe includes necessary permissions for:
- Microphone access
- Camera access
- Geolocation
- Encrypted media
- Scripts and forms

## 🎨 Customization

### Changing the Target Website
To display a different website, update the `src` attribute in `src/App.tsx`:
```typescript
<iframe
  src="https://your-website.com"
  // ... other props
/>
```

### Styling Modifications
- **Full-screen**: Modify `src/App.css` for layout changes
- **Global styles**: Update `src/index.css` for global styling
- **Responsive design**: Add media queries as needed

## 🔒 Security

The iframe includes appropriate sandbox permissions:
- `allow-same-origin`: Allows same-origin requests
- `allow-scripts`: Enables JavaScript execution
- `allow-forms`: Permits form submissions
- `allow-popups`: Allows popup windows
- `allow-popups-to-escape-sandbox`: Enables popups to break out of sandbox

## 📱 Mobile App Integration

This web application can be easily integrated into mobile apps:

### React Native WebView
```javascript
import { WebView } from 'react-native-webview';

<WebView
  source={{ uri: 'https://app.ailivetranslate.net' }}
  style={{ flex: 1 }}
/>
```

### Flutter WebView
```dart
WebView(
  initialUrl: 'https://app.ailivetranslate.net',
  javascriptMode: JavascriptMode.unrestricted,
)
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is part of the AI Live Translate ecosystem.

## 🔗 Links

- **Main Website**: https://ailivetranslate.net
- **Mobile App**: https://app.ailivetranslate.net
- **Repository**: https://github.com/Alaaharoun/ailivetranslate-appmobile

---

**Note**: This is a WebView wrapper application designed to provide a mobile-optimized experience for the AI Live Translate website.
