import React from 'react';
import { Route, Switch} from 'react-router-dom';
import Home from '../Home';
import Login from '../Login';
import Footer from './Footer';
import Header from './Header';
import NotFound from './NotFound';
import PrivateRoute from './PrivateRoute';
const App = () => (
    <div className="App">
        <Header />
        <main role="main" className="container">
            <Switch>
                <Route exact path="/login" component={Login} />
                <PrivateRoute path="/" exact component={Home} />
                <Route component={NotFound} />
            </Switch>
        </main>
        <Footer/>
    </div>
);
export default App;
