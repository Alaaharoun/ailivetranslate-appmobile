# Google Play Billing Integration Guide

## 🎯 Overview

This guide explains how to integrate Google Play Billing with your AI Live Translate Mobile WebView application for creating APK/AAB files with in-app purchases.

## 📱 Mobile App Generation

### 1. Using PWA Builder (Recommended)

#### Step 1: Generate Mobile App
1. Go to [PWA Builder](https://www.pwabuilder.com/)
2. Enter your website URL: `https://app.ailivetranslate.net`
3. Click "Build My PWA"
4. Wait for the analysis to complete

#### Step 2: Download Android Package
1. In the Android section, click "Download"
2. Choose between:
   - **APK**: Direct installation file
   - **AAB**: Android App Bundle (recommended for Play Store)
3. Download the generated file

#### Step 3: Test the App
1. Install the APK on an Android device
2. Test all functionality
3. Verify WebView loads correctly
4. Test billing integration

### 2. Using Bubblewrap (Advanced)

#### Prerequisites
```bash
# Install Node.js and npm
# Install Java JDK 11+
# Install Android Studio
# Set ANDROID_HOME environment variable
```

#### Installation
```bash
# Install Bubblewrap CLI
npm install -g @bubblewrap/cli

# Initialize project
bubblewrap init --manifest https://app.ailivetranslate.net/manifest.json

# Build Android app
bubblewrap build
```

## 💳 Google Play Billing Setup

### 1. Google Play Console Setup

#### Create App
1. Go to [Google Play Console](https://play.google.com/console)
2. Click "Create app"
3. Fill in app details:
   - **App name**: AI Live Translate Mobile
   - **Default language**: English
   - **App or game**: App
   - **Free or paid**: Free (with in-app purchases)

#### Configure Billing
1. Go to "Monetization setup"
2. Enable "In-app products"
3. Set up payment profile
4. Configure tax information

### 2. Product Configuration

#### Subscription Plans
Based on your existing plans, create these products:

| Product ID | Name | Price | Duration |
|------------|------|-------|----------|
| `mini_monthly` | Mini Monthly | $4.99 | Monthly |
| `basic_monthly` | Basic Monthly | $9.99 | Monthly |
| `basic_yearly` | Basic Yearly | $99.99 | Yearly |
| `pro_monthly` | Pro Monthly | $19.99 | Monthly |
| `pro_yearly` | Pro Yearly | $199.99 | Yearly |
| `unlimited_monthly` | Unlimited Monthly | $29.99 | Monthly |
| `unlimited_yearly` | Unlimited Yearly | $299.99 | Yearly |

#### Setup Steps
1. Go to "Products" > "Subscriptions"
2. Click "Create subscription"
3. Fill in details for each plan
4. Set pricing and availability
5. Configure trial periods if needed

### 3. Billing Integration Code

#### Add Billing Library
```bash
# Add to your Android project
implementation 'com.android.billingclient:billing:6.1.0'
```

#### Billing Implementation
```kotlin
class BillingManager(private val activity: Activity) {
    private lateinit var billingClient: BillingClient
    
    fun initializeBilling() {
        billingClient = BillingClient.newBuilder(activity)
            .setListener { billingResult, purchases ->
                // Handle purchase updates
            }
            .enablePendingPurchases()
            .build()
            
        billingClient.startConnection(object : BillingClientStateListener {
            override fun onBillingSetupFinished(billingResult: BillingResult) {
                if (billingResult.responseCode == BillingClient.BillingResponseCode.OK) {
                    // Billing client is ready
                }
            }
            
            override fun onBillingServiceDisconnected() {
                // Retry connection
            }
        })
    }
    
    fun purchaseSubscription(sku: String) {
        val productList = listOf(
            QueryProductDetailsParams.Product.newBuilder()
                .setProductId(sku)
                .setProductType(BillingClient.ProductType.SUBS)
                .build()
        )
        
        val params = QueryProductDetailsParams.newBuilder()
            .setProductList(productList)
            .build()
            
        billingClient.queryProductDetailsAsync(params) { billingResult, productDetailsList ->
            if (billingResult.responseCode == BillingClient.BillingResponseCode.OK) {
                // Launch billing flow
                launchBillingFlow(productDetailsList[0])
            }
        }
    }
    
    private fun launchBillingFlow(productDetails: ProductDetails) {
        val billingFlowParams = BillingFlowParams.newBuilder()
            .setProductDetailsParamsList(
                listOf(
                    BillingFlowParams.ProductDetailsParams.newBuilder()
                        .setProductDetails(productDetails)
                        .build()
                )
            )
            .build()
            
        billingClient.launchBillingFlow(activity, billingFlowParams)
    }
}
```

#### WebView Integration
```kotlin
class MainActivity : AppCompatActivity() {
    private lateinit var webView: WebView
    private lateinit var billingManager: BillingManager
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        webView = findViewById(R.id.webview)
        billingManager = BillingManager(this)
        
        setupWebView()
        billingManager.initializeBilling()
    }
    
    private fun setupWebView() {
        webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            allowFileAccess = true
            allowContentAccess = true
        }
        
        // Inject billing interface
        webView.addJavascriptInterface(BillingInterface(billingManager), "AndroidBilling")
        
        webView.loadUrl("https://app.ailivetranslate.net")
    }
}

class BillingInterface(private val billingManager: BillingManager) {
    @JavascriptInterface
    fun purchaseSubscription(sku: String) {
        billingManager.purchaseSubscription(sku)
    }
    
    @JavascriptInterface
    fun isSubscriptionActive(sku: String): Boolean {
        // Check subscription status
        return false
    }
}
```

### 4. JavaScript Integration

#### Add to WebView
```javascript
// In your React app, add billing interface
const handlePurchase = (planType, duration) => {
  const sku = `${planType}_${duration}`;
  
  if (window.AndroidBilling) {
    // Native Android billing
    window.AndroidBilling.purchaseSubscription(sku);
  } else {
    // Fallback to web billing
    window.open(`https://ailivetranslate.net/subscribe?plan=${sku}`, '_blank');
  }
};

// Check subscription status
const checkSubscription = (sku) => {
  if (window.AndroidBilling) {
    return window.AndroidBilling.isSubscriptionActive(sku);
  }
  return false;
};
```

## 🚀 App Store Deployment

### 1. Google Play Store

#### Prepare for Upload
1. **Sign your app** with release keystore
2. **Test thoroughly** on multiple devices
3. **Prepare store listing**:
   - App description
   - Screenshots
   - Feature graphic
   - Privacy policy

#### Upload Process
1. Go to "Production" track
2. Click "Create new release"
3. Upload AAB file
4. Add release notes
5. Review and roll out

#### Billing Verification
1. Test in-app purchases in testing track
2. Verify subscription flows
3. Test billing integration
4. Monitor for errors

### 2. Alternative Stores

#### Amazon Appstore
1. Create developer account
2. Upload APK file
3. Configure in-app purchases
4. Submit for review

#### Huawei AppGallery
1. Register as developer
2. Upload AAB/APK
3. Configure billing
4. Submit for approval

## 🔧 Testing & Debugging

### 1. Test Accounts
```bash
# Create test accounts in Google Play Console
# Use test credit cards for purchases
# Test subscription flows
```

### 2. Debug Commands
```bash
# Check app signing
keytool -list -v -keystore your-keystore.jks

# Verify APK
aapt dump badging your-app.apk

# Test billing
adb shell am start -n com.yourapp/.MainActivity
```

### 3. Common Issues

#### Billing Not Working
- Check Google Play Console setup
- Verify product IDs match
- Test with test accounts
- Check network connectivity

#### WebView Issues
- Ensure JavaScript is enabled
- Check CORS settings
- Verify SSL certificates
- Test on different Android versions

## 📊 Analytics & Monitoring

### 1. Google Play Console
- **Revenue reports**
- **Subscription metrics**
- **User acquisition**
- **Crash reports**

### 2. Firebase Analytics
```kotlin
// Add Firebase to your app
implementation 'com.google.firebase:firebase-analytics:21.5.0'

// Track events
FirebaseAnalytics.getInstance(this).logEvent("subscription_purchase") {
    param("plan_type", planType)
    param("duration", duration)
    param("price", price)
}
```

### 3. Custom Analytics
```javascript
// Track in your WebView
const trackPurchase = (planType, duration, price) => {
  gtag('event', 'purchase', {
    'transaction_id': generateId(),
    'value': price,
    'currency': 'USD',
    'items': [{
      'item_id': `${planType}_${duration}`,
      'item_name': `${planType} ${duration}`,
      'price': price,
      'quantity': 1
    }]
  });
};
```

## 🎯 Success Metrics

### Key Performance Indicators
- **Install rate**: Downloads per day
- **Conversion rate**: Free to paid users
- **Retention rate**: Monthly active users
- **Revenue per user**: Average subscription value
- **Churn rate**: Subscription cancellations

### Optimization Targets
- **App store rating**: > 4.5 stars
- **Crash rate**: < 1%
- **Load time**: < 3 seconds
- **Billing success rate**: > 95%

---

**Ready to launch!** Your AI Live Translate Mobile app with Google Play Billing is ready for the app stores. 🚀
