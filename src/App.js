import React, { Component } from 'react';
import axios from "axios";

class App extends Component {

  componentDidMount() {
    axios.get(`http://${window.location.hostname}/api/users/list`)
      .then(function (response) {
        console.log(response);
      })
      .catch(function (error) {
        console.log(error);
      });
  }

  render() {
    return (
      <div className="App">
        Hello
      </div>
    );
  }
}

export default App;
