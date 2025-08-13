import React, { useEffect } from 'react';
import './App.css';

function App() {
  useEffect(() => {
    // Simple redirect to main site
    window.location.href = 'https://ailivetranslate.net';
  }, []);

  return (
    <div className="App">
      <div className="loading-container">
        <div className="loading-spinner"></div>
        <p>Redirecting to AI Live Translate...</p>
        <p style={{ fontSize: '14px', opacity: 0.7, marginTop: '10px' }}>
          Opening the main application...
        </p>
      </div>
    </div>
  );
}

export default App;
