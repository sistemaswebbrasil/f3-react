import React, { Component } from 'react';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { login } from '../Redux/auth';
import loading from '../images/loading.svg';
// import loading from '../images/react.svg';
export class Login extends Component {

    constructor(props) {
        super(props);
        this.state = {
            username: "adriano",
            password: "exata"
        };
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(event) {
        // console.log(event.target);
        this.setState({
            [event.target.name]: event.target.value
        });
    }

    handleSubmit = e => {
        e.preventDefault();
        const { username: { value: username }, password: { value: password } } = e.target;
        this.props.login(username,password);
    }

  render() {
    return (
        <form onSubmit={this.handleSubmit}>
            <h1>Entrar no sistema</h1>

            <h2>
                {/* {JSON.stringify(this.props.user)} */}
            </h2>

            {this.props.logged &&
                <div className="alert alert-success" role="alert">
                    <h4 className="alert-heading">Sucesso!</h4>
                    <p>Login efetuado com sucesso</p>
                    <hr />
                    <p className="mb-0">{this.props.user}</p>
                </div>
            }

            {this.props.error &&
                <div className="alert alert-danger" role="alert">
                    <h4 className="alert-heading">Erro!</h4>
                    <p>Não foi possível fazer o login</p>
                    <hr />
                    <p className="mb-0">{this.props.error}</p>
                </div>
            }

            <div className="form-group">
                <label htmlFor="exampleInputEmail1">Usuário</label>
                <input
                    type="text"
                    className="form-control"
                    name="username"
                    aria-describedby="emailHelp"
                    placeholder="Nome de usuário"
                    value={this.state.username}
                    onChange={this.handleChange}
                    disabled={this.props.loggingIn}
                />
            </div>
            <div className="form-group">
                <label htmlFor="exampleInputPassword1">Senha</label>
                <input
                    type="password"
                    className="form-control"
                    name="password"
                    placeholder="Password"
                    value={this.state.password}
                    onChange={this.handleChange}
                    disabled={this.props.loggingIn}
                />
            </div>
            {
                this.props.loggingIn &&
                <img src={loading} className="rounded mx-auto d-block" alt="Carregando" />
            }


            <button type="submit" className="btn btn-primary" disabled={this.props.loggingIn}>Entrar</button>
        </form>
    )
  }
}



const mapStateToProps = state => (

    {

    user: state.auth,
    loggingIn: state.auth.loggingIn ,
    logged: state.auth.logged,
    error: state.auth.error
});

const mapDispatchToProps = dispatch =>
    bindActionCreators(
        {
            login
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(Login);




