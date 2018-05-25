import React from 'react';
import { Link } from "react-router-dom";

const NavLinks = () => {
  return (
      <ul className="navbar-nav mr-auto">
          <li className={window.location.pathname === '/' ? 'nav-item active' : 'nav-item'} >
              <Link className="nav-link" to="/">Home</Link>
          </li>
          <li className={window.location.pathname === '/login' ? 'nav-item active' : 'nav-item'} >
              <Link className="nav-link" to="/login">Login</Link>
          </li>
      </ul>
  )
}

export default NavLinks
