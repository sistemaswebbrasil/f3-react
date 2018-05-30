import React, { Component } from 'react';
import { connect } from 'react-redux';
import { list } from "../Redux/users";
import List from './List'

export class User extends Component {
    componentDidMount() {
        this.props.list();
    }

    render() {
        return (
            <div>
                <h1>Usuários</h1>
                <List items={this.props.items} error={this.props.error}></List>
            </div>
        )
    }
}

const mapStateToProps = (state) => ({
    items: state.users.items,
    error: state.users.error
})

const mapDispatchToProps = (dispatch) => ({
    list: () => { dispatch(list()) },
})

export default connect(mapStateToProps, mapDispatchToProps)(User)
