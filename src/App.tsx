import React, { useEffect } from 'react';
import './App.css';

function App() {
  useEffect(() => {
    // Redirect to main website instead of iframe
    window.location.href = 'https://ailivetranslate.net';
  }, []);

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
