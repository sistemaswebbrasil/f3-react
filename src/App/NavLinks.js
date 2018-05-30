import React from 'react';
import { NavLink } from "react-router-dom";

const NavLinks = props => {
    return (
        <ul className="navbar-nav mr-auto">
            <NavLink
                to="/"
                className="nav-link"
                exact
                activeClassName="nav-item active"
            >Home </NavLink>
            {!props.logged &&
            <NavLink
                to="/login"
                exact
                className="nav-link"
                activeClassName="nav-item active"
            >Login</NavLink>
            }
        </ul>
    )
}

export default NavLinks
