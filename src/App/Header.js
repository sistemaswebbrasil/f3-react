import React from 'react'
import { Link } from "react-router-dom";
import NavLinks from './NavLinks';

const Header = () => {
  return (
      <header>
          <nav className="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
              <Link className="navbar-brand" to="/">Projeto Agora vai</Link>
              <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse"
                  aria-expanded="false" aria-label="Toggle navigation">
                  <span className="navbar-toggler-icon"></span>
              </button>
              <div className="collapse navbar-collapse" id="navbarCollapse">
                  <NavLinks />
              </div>
          </nav>
      </header>
  )
}

export default Header
