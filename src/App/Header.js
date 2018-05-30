import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Link, withRouter } from "react-router-dom";
import NavLinks from './NavLinks';
import { logout, isAuthenticated } from '../Redux/auth';

export class Header extends Component {

    componentDidMount() {
        this.props.isAuthenticated();
    }

    render() {
        return (
            <header>
                <nav className="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                    <Link className="navbar-brand" to="/">Projeto Agora vai</Link>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarCollapse">
                        <NavLinks logged={this.props.logged} />
                    </div>
                    {this.props.user.id &&
                        <div className="form-inline mt-2 mt-md-0">
                            <span className="navbar-brand" to="/">{this.props.user.name}</span>
                            <button
                                className="btn btn-outline-danger my-2 my-sm-0"
                                type="submit"
                                onClick={this.props.logout}
                            >
                                Logout
                            </button>
                        </div>
                    }
                </nav>
            </header>
        )
    }
}

const mapStateToProps = (state) => ({
    user: state.auth.user,
    logged: state.auth.logged,
})

const mapDispatchToProps = (dispatch) => ({
    logout: () => { dispatch(logout()) },
    isAuthenticated: () => dispatch(isAuthenticated()),
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Header))
