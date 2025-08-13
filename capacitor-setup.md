# Capacitor Setup for APK Generation

## Prerequisites
- Node.js 16+
- Android Studio
- Android SDK

## Installation Steps

### 1. Install Capacitor
```bash
npm install @capacitor/core @capacitor/cli
npm install @capacitor/android
```

### 2. Initialize Capacitor
```bash
npx cap init "AI Live Translate" "com.ailivetranslate.app"
```

### 3. Add Android Platform
```bash
npx cap add android
```

### 4. Build the Web App
```bash
npm run build
```

### 5. Copy Web Assets
```bash
npx cap copy android
```

### 6. Open in Android Studio
```bash
npx cap open android
```

### 7. Build APK in Android Studio
- Build > Build Bundle(s) / APK(s) > Build APK(s)
- Find APK in: `android/app/build/outputs/apk/debug/`

## Configuration

### Update capacitor.config.ts
```typescript
import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.ailivetranslate.app',
  appName: 'AI Live Translate',
  webDir: 'build',
  server: {
    androidScheme: 'https'
  }
};

export default config;
```

### Update Android Manifest
In `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.CAMERA" />
```
