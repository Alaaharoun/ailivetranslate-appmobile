import React from 'react';
import './App.css';

function App() {
  const handleOpenApp = () => {
    window.open('https://ailivetranslate.net', '_blank');
  };

  return (
    <div className="App">
      <div className="simple-container">
        <div className="app-icon">
          <div className="icon-circle">
            <span>AI</span>
          </div>
        </div>
        <h1>AI Live Translate</h1>
        <p>Mobile WebView Application</p>
        <button onClick={handleOpenApp} className="open-button">
          Open Application
        </button>
        <p style={{ fontSize: '12px', opacity: 0.6, marginTop: '20px' }}>
          Click the button above to open the main application
        </p>
      </div>
    </div>
  );
}

export default App;
