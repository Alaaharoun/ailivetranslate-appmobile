# Generate AAB with Capacitor

## Prerequisites
- Node.js 16+
- Android Studio
- Android SDK
- Java Development Kit (JDK)

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

### 7. Build AAB in Android Studio
1. **Build** > **Build Bundle(s) / APK(s)** > **Build APK(s)**
2. **Build** > **Generate Signed Bundle / APK**
3. Choose **Android App Bundle**
4. Configure signing
5. Build AAB

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

## AAB Location
The generated AAB will be in:
`android/app/build/outputs/bundle/release/app-release.aab`
