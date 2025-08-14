import React, { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    // Show loading screen for 3 seconds
    const timer = setTimeout(() => {
      setIsLoading(false);
      // Redirect to main site
      window.location.href = 'https://ailivetranslate.net';
    }, 3000);

    return () => clearTimeout(timer);
  }, []);

  if (isLoading) {
    return (
      <div className="App-white">
        <div className="loading-screen-white">
          <div className="logo-container-white">
            <div className="logo-circle-white">
              <span className="logo-text-white">AI</span>
            </div>
          </div>
          <h1 className="app-title-white">AI Live Translate</h1>
          <p className="app-subtitle-white">Mobile WebView Application</p>
          <div className="loading-spinner-white"></div>
          <p className="loading-text-white">Loading...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="App">
      <div className="loading-container">
        <div className="loading-spinner"></div>
        <p>Redirecting to AI Live Translate...</p>
      </div>
    </div>
  );
}

export default App;
