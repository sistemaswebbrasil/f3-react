// import { post } from '../helpers';
var axios = require('axios');

export const LOGIN_REQUEST = 'auth/LOGIN_REQUEST';
export const LOGIN_SUCCESS = 'auth/LOGIN_SUCCESS';
export const LOGIN_FAILURE = 'auth/LOGIN_FAILURE';




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
                // user: ['usuarioqualquer','psjfiopsdhfosdhfosi'],
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
                error: JSON.stringify(action.payload, null, 1),
            };
        default:
            return state;
    }
};

export const login = (username, password) => {
    return dispatch => {

        // console.log(username);

        dispatch({
            // body: {user, password} ,
            type: LOGIN_REQUEST,
        });

        // try {
        //     const res = fetch('http://localhost/api/login', {
        //         method: 'POST',
        //         headers: {
        //             'Content-Type': 'application/json',
        //         },
        //         body: JSON.stringify(
        //             {
        //                 username: username,
        //                 password: password
        //             }
        //         ),
        //     })
        //     // const data = res()
        //     // console.log(data);
        // } catch (e) {
        //     console.log(e);
        // }


/*
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'http://localhost/api/login');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            // if (xhr.status === 200 && xhr.responseText !== newName) {
            if (xhr.status === 200) {
                dispatch({
                    type: LOGIN_SUCCESS
                });
                // alert('Something went wrong.  Name is now ' + xhr.responseText);
            }
            else if (xhr.status !== 200) {
                dispatch({
                    type: LOGIN_FAILURE,
                    payload: xhr.status
                });
                // alert('Request failed.  Returned status of ' + xhr.status);
            }
            dispatch({
                type: LOGIN_FAILURE,
                payload: xhr.status
            });
        };
        // xhr.send(encodeURI('username=' + username,'password=' + password));
        // xhr.send("username=" + username + "&password=" + password + "");
        xhr.send(encodeURI("username=" + username + "&password=" + password + ""));
        return xhr;
*/


        // http://localhost/api/login
        // axios.post('login',
        //     {data:{username,password}}
        // ).then(function (response) {
        //     dispatch({
        //         type: LOGIN_SUCCESS
        //     });
        //     // console.log(response);
        //     // console.log(response);
        // }).catch(function (error) {
        //     dispatch({
        //         type: LOGIN_FAILURE,
        //         payload: error
        //     });
        //     // console.log(error);
        // });



            return axios.post('http://localhost/api/login', {
                username,
                password
            }).then(function (response) {
                dispatch({
                    type: LOGIN_SUCCESS,
                    payload: response
                });
                // let { token, user } = response.data.data;
                // user.token = token;
                // localStorage.setItem('user', JSON.stringify(user));
                // axios.defaults.headers.common['Authorization'] = 'Bearer ' + user.token;
                // return user;
            }).catch(function (error) {
                dispatch({
                    type: LOGIN_FAILURE,
                    payload: error
                });
                // console.log(error);
            });



        // axios.post('/api/login', {
        //     username,
        //     password
        // }).then(function (response) {
        //     let { token, user } = response.data.data;
        //     user.token = token;
        //     localStorage.setItem('user', JSON.stringify(user));
        //     axios.defaults.headers.common['Authorization'] = 'Bearer ' + user.token;
        //     return user;
        // }).catch(errorResponse);






        // setTimeout(() => {
        //     dispatch({
        //         type: LOGIN_FAILURE
        //     });
        // }, 30000);
        //dispatch(request({ username }));

        // return setTimeout(() => {
        //     dispatch({
        //         type: LOGIN_SUCCESS
        //     });
        // }, 3000);

    };
};

// export const login = ({ email, password }) => dispatch => {
//     dispatch({ type: types.LOGIN_REQUEST })
//     post({
//         url: urls.LOGIN,
//         body: { email, password },
//         success: types.LOGIN_SUCCESS,
//         failure: types.LOGIN_FAILURE,
//         dispatch,
//     })
// }


// function login(username, password) {
//     return dispatch => {
//         dispatch(request({ username }));

//         userService.login(username, password)
//             .then(
//                 user => {
//                     dispatch(success(user));
//                     history.push('/');
//                 },
//                 error => {
//                     dispatch(failure(error));
//                     dispatch(alertActions.error(error));
//                 }
//             );
//     };

//     function request(user) { return { type: userConstants.LOGIN_REQUEST, user };}
//     function success(user) { return { type: userConstants.LOGIN_SUCCESS, user };}
//     function failure(error) { return { type: userConstants.LOGIN_FAILURE, error };}
// }
