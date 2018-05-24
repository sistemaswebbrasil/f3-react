import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
window.jQuery = window.$ = require('jquery/dist/jquery.min.js');
require('bootstrap/dist/js/bootstrap.min.js');

ReactDOM.render(<App />, document.getElementById('root'));
registerServiceWorker();
