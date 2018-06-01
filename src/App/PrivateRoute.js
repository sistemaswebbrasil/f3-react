import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import jwtDecode from "jwt-decode";

function isExpired(user){
    try {
        let usr = JSON.parse(localStorage.getItem('user'));
        if (jwtDecode(usr.token).exp > new Date().getTime() / 1000) {
            return false;
        }
        return true;
    } catch (error) {
        return true;
    }
}

const PrivateRoute = ({ component: Component, ...rest }) => (
    <Route
        {...rest}
        render={props => (
            isExpired()
                ?
                <Redirect to={{ pathname: '/login', state: { from: props.location } }} />
                :
                <Component {...props} />
        )}
    />
);

export default PrivateRoute;

