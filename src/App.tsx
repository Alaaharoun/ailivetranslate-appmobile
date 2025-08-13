import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <iframe
        src="https://ailivetranslate.net"
        title="AI Live Translate"
        className="webview-iframe"
        allow="microphone; camera; geolocation; encrypted-media"
        sandbox="allow-same-origin allow-scripts allow-forms allow-popups allow-popups-to-escape-sandbox"
        style={{
          width: '100%',
          height: '100%',
          border: 'none',
          display: 'block'
        }}
      />
    </div>
  );
}

export default App;
