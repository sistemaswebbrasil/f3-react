export default function defaultApi() {
    let axios = require('axios');
    let user = JSON.parse(localStorage.getItem('user'));
    axios.defaults.baseURL = 'http://localhost/api';
    axios.defaults.headers.common['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
    if (user && user.token) {
        return axios.defaults.headers.common['Authorization'] = 'Bearer ' + user.token;
    } else {
        return null;
    }
}
