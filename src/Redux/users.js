var axios = require('axios');

export const LIST_REQUEST = 'users/LIST_REQUEST';
export const LIST_SUCCESS = 'users/LIST_SUCCESS';
export const LIST_FAILURE = 'users/LIST_FAILURE';

export const SHOW_REQUEST = 'users/SHOW_REQUEST';
export const SHOW_SUCCESS = 'users/SHOW_SUCCESS';
export const SHOW_FAILURE = 'users/SHOW_FAILURE';

const initialState = {
    items: '',
    requesting: false,
    error: '',
};

export default (state = initialState, action) => {
    switch (action.type) {
        case LIST_REQUEST:
            return {
                ...state,
                requesting: true,
            };

        case LIST_SUCCESS:

            return {
                ...state,
                items: action.payload,
                requesting: false,
                error: '',
            };

        case LIST_FAILURE:
            return {
                ...state,
                items: '',
                requesting: false,
                error: action.payload
            };
        case SHOW_REQUEST:
            return {
                ...state,
                requesting: true,
            };

        case SHOW_SUCCESS:

            return {
                ...state,
                requesting: false,
                error: '',
                user: action.payload
            };

        case SHOW_FAILURE:
            return {
                ...state,
                requesting: false,
                error: action.payload
            };

        default:
            return state;
    }
};

export const list = () => {
    return dispatch => {
        dispatch({
            type: LIST_REQUEST,
        });
        return axios.get('users/list', {
        }).then(function (response) {
            let { data } = response.data;
            dispatch({
                type: LIST_SUCCESS,
                payload: data
            });
        }).catch(function (error) {
            let { message } = error;
            dispatch({
                type: LIST_FAILURE,
                payload: message
            });
        });
    };
};

export const show = (id) => {
    return dispatch => {
        dispatch({
            type: SHOW_REQUEST
        });
        return axios.get('users/show/' + id
        ).then(function (response) {
            let { data } = response.data;
            dispatch({
                type: SHOW_SUCCESS,
                payload: data
            });
        }).catch(function (error) {
            let { message,response } = error;
            //debugger
            dispatch({
                type: SHOW_FAILURE,
                payload: response.data.message ? JSON.stringify(response.data.message, ' ',2) : message
            });
        });
    }
}



