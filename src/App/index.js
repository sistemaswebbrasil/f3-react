import React from 'react';
import { Route, Switch} from 'react-router-dom';
import Home from '../Home';
import Login from '../Login';
import Footer from './Footer';
import Header from './Header';
import NotFound from './NotFound';
const App = () => (
    <div className="App">
        <Header />
        <main role="main" className="container">
            <Switch>
                <Route exact path="/" component={Home} />
                <Route exact path="/login" component={Login} />
                <Route component={NotFound} />
            </Switch>

        </main>
        <Footer/>
    </div>
);
export default App;
