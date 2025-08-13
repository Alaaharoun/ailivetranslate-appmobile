import React, { useEffect } from 'react';
import './App.css';

function App() {
  useEffect(() => {
    // Check if we're on HTTPS before redirecting
    if (window.location.protocol === 'https:') {
      // Use HTTPS URL for main site
      window.location.href = 'https://ailivetranslate.net';
    } else {
      // Fallback to HTTP if needed
      window.location.href = 'http://ailivetranslate.net';
    }
  }, []);

  return (
    <div className="App">
      <div className="loading-container">
        <div className="loading-spinner"></div>
        <p>Redirecting to AI Live Translate...</p>
        <p style={{ fontSize: '14px', opacity: 0.7, marginTop: '10px' }}>
          Ensuring secure connection...
        </p>
      </div>
    </div>
  );
}

export default App;
