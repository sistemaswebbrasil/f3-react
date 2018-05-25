import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { ConnectedRouter } from 'react-router-redux';
import store, { history } from './Redux/store';
import registerServiceWorker from './registerServiceWorker';
import App from './App';
import defaultApi from './helpers/defaultApi';
defaultApi();

window.jQuery = window.$ = require('jquery/dist/jquery.min.js');
require('bootstrap/dist/js/bootstrap.min.js');

ReactDOM.render(
    <Provider store={store}>
        <ConnectedRouter history={history}>
            <div>
                <App/>
            </div>
        </ConnectedRouter>
    </Provider>,
    document.getElementById('root')
);
registerServiceWorker();
