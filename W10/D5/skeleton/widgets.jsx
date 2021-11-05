import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './frontend/clock';

function Root() {
  return (
    <div className="root">
      <Clock />
    </div>
  )
}

document.addEventListener("DOMContentLoaded", () => {
  const main = document.getElementById("root");
  ReactDOM.render(<Root />, main);
});