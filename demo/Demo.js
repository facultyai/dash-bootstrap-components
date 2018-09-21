import React, {Component} from 'react';
import {
  Alert,
} from '../src';

class Demo extends Component {
  render() {
    return (<div>
        <h2>Alerts</h2>
        <div>
          <Alert color="primary">
            This is a primary alert — check it out!
          </Alert>
          <Alert color="secondary">
            This is a secondary alert — check it out!
          </Alert>
          <Alert color="success">
            This is a success alert — check it out!
          </Alert>
          <Alert color="danger">
            This is a danger alert — check it out!
          </Alert>
          <Alert color="warning">
            This is a warning alert — check it out!
          </Alert>
          <Alert color="info">
            This is a info alert — check it out!
          </Alert>
          <Alert color="light">
            This is a light alert — check it out!
          </Alert>
          <Alert color="dark">
            This is a dark alert — check it out!
          </Alert>
        </div>

        <br/>
        <div style={{
            'height' : '200px'
          }}/>
    </div>);
  }
}

export default Demo;
