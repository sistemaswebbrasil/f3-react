import React, { Component } from 'react'
import { connect } from 'react-redux'
import { show } from "../Redux/users";

export class Show extends Component {

    componentDidMount() {
        this.props.show(this.props.match.params.id);
    }

    render() {
        return (
            <div>
                <h1>Show User {this.props.match.params.id}</h1>

                {this.props.error &&
                    <div className="alert alert-danger" role="alert">
                        <h4 className="alert-heading">Erro!</h4>
                        <p>Não foi possível carregar os dados</p>
                        <hr />
                        <p className="mb-0">{this.props.error}</p>
                    </div>
                }

                {this.props.user &&
                    <div className="alert alert-success" role="alert">
                        <h4 className="alert-heading">Ok!</h4>
                        <p>Usuário encontrado</p>
                        <hr />
                    <p className="mb-0">{JSON.stringify(this.props.user,' ',2)}</p>
                    </div>
                }

            </div>
        )
    }
}

const mapStateToProps = (state) => ({
    user: state.users.user,
    error: state.users.error
})

const mapDispatchToProps = (dispatch) => ({
    show: (id) => { dispatch(show(id)) },
})


export default connect(mapStateToProps, mapDispatchToProps)(Show)
