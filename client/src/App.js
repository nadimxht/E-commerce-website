import React, { Component } from "react";
import Router from './Router'

export default class App extends Component {
  render() {
    return <div className='page-container'>
      <Router />
    </div>
  }
}
