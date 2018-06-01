import { push } from 'react-router-redux';
import jwtDecode from "jwt-decode";
var axios = require('axios');

export const LOGIN_REQUEST = 'auth/LOGIN_REQUEST';
export const LOGIN_SUCCESS = 'auth/LOGIN_SUCCESS';
export const LOGIN_FAILURE = 'auth/LOGIN_FAILURE';
export const LOGOUT = 'auth/LOGOUT';

const initialState = {
    user: [],
    loggingIn: false,
    logged: false,
    error: '',
};

export default (state = initialState, action) => {
    switch (action.type) {
        case LOGIN_REQUEST:
            return {
                ...state,
                loggingIn: true,
            };

        case LOGIN_SUCCESS:

            return {
                ...state,
                user: action.payload,
                logged: true,
                loggingIn: false,
                error: '',
            };

        case LOGIN_FAILURE:
            return {
                ...state,
                user: [],
                loggingIn: false,
                logged: false,
                error: action.payload
            };
        case LOGOUT:
            return {
                user: [],
                loggingIn: false,
                logged: false,
                error: '',
            };
        default:
            return state;
    }
};

export const login = (username, password) => {
    return dispatch => {

        dispatch({
            type: LOGIN_REQUEST,
        });
        return axios.post('login', {
            username,
            password
        }).then(function (response) {
            let { token, user } = response.data.data;
            user.token = token;
            localStorage.setItem('user', JSON.stringify(user));
            axios.defaults.headers.common['Authorization'] = 'Bearer ' + user.token;
            dispatch({
                type: LOGIN_SUCCESS,
                payload: user
            });
            dispatch(push('/'));
        }).catch(function (error) {
            let {message} = error;
            localStorage.removeItem('user');
            dispatch({
                type: LOGIN_FAILURE,
                payload: message
            });
        });
    };
};

export const logout = ()  => {
    return dispatch => {
        dispatch({
            type: LOGOUT,
        });
        delete axios.defaults.headers.common["Authorization"];
        localStorage.removeItem('user');
        dispatch(push('/login'));
    }
};

export const isAuthenticated = () => {
    return dispatch => {

        dispatch({
            type: LOGIN_REQUEST,
        });
        if (!isExpired()){
            dispatch({
                type: LOGIN_SUCCESS,
                payload: JSON.parse(localStorage.getItem('user'))
            });
        }else{
            localStorage.removeItem('user');
            dispatch({
                type: LOGIN_FAILURE
            });
        }
    }
}

function isExpired() {
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
