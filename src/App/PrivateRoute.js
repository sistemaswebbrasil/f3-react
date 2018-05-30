import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import jwtDecode from "jwt-decode";

function isExpired(user){
    try {
        let usr = JSON.parse(localStorage.getItem('user'));
        if (jwtDecode(usr.token).exp > new Date().getTime() / 1000) {
            return true;
        }
    } catch (error) {
        return false;
    }
}

const PrivateRoute = ({ component: Component, ...rest }) => (
    <Route
        {...rest}
        render={props => (
            isExpired()
                ?
                <Component {...props} />
                : <Redirect to={{ pathname: '/login', state: { from: props.location } }} />
        )}
    />
);

export default PrivateRoute;

