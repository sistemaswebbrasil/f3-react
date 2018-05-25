// Usado para adicionar o token em todas as requisições se o usuário estiver logado
export default function defaultApi() {
    let axios = require('axios');

    // return authorization header with jwt token
    // let user = JSON.parse(localStorage.getItem('user'));

    axios.defaults.baseURL = 'http://localhost/api';
    // xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    // axios.defaults.headers.common['Content-Type'] = 'application/json';//application/x-www-form-urlencoded
    axios.defaults.headers.common['Content-Type'] = 'application/x-www-form-urlencoded';
    // axios.defaults.headers.common['Accept'] = 'application/json';
    // axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';

    //axios.defaults.headers.common['authorization'];
    //axios.defaults.headers.post['Access-Control-Allow-Origin'] = '*';


    // axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';



    // headers: {
    //     'Access-Control-Allow-Origin': '*',
	// };


    // if (user && user.token) {
    //     return axios.defaults.headers.common['Authorization'] = 'Bearer ' + user.token;
    // } else {
    //     return null;
    // }
}



// const instance = axios.create({
//     baseURL: 'http://localhost/',
//     responseType: 'json',
//     headers: {
//         'Accept': 'application/json',
//         'Content-Type': 'application/json',
//         'Authorization': 'test',
//         'X-Test': 'testing'
//     }
// })
// axios.get('v2/portal/bar/foo?')
