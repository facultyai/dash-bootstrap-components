import React, {Component} from 'react';
import {
  Alert,
  Badge,
  Button,
  ButtonGroup,
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

        <h2>Badges</h2>
        <h4>{"A heading with a badge "}
          <Badge color="primary">New!</Badge>
        </h4>
        <p>{"Do you take the "}
          <Badge pill={true} color="danger">red pill</Badge>
          {" or the "}
          <Badge pill={true} color="primary">blue pill</Badge>
        </p>

        <br/>

        <h2>Buttons</h2>
        <div>
          <Button color="primary">primary</Button>{' '}
          <Button color="secondary">secondary</Button>{' '}
          <Button color="success">success</Button>{' '}
          <Button color="info">info</Button>{' '}
          <Button color="warning">warning</Button>{' '}
          <Button color="danger">danger</Button>{' '}
          <Button color="link">link</Button>
        </div>
        <br/>
        <h4>Outline buttons</h4>
        <div>
          <Button outline={true} color="primary">primary</Button>{' '}
          <Button outline={true} color="secondary">secondary</Button>{' '}
          <Button outline={true} color="success">success</Button>{' '}
          <Button outline={true} color="info">info</Button>{' '}
          <Button outline={true} color="warning">warning</Button>{' '}
          <Button outline={true} color="danger">danger</Button>{' '}
          <Button outline={true} color="link">link</Button>
        </div>
        <br/>
        <h4>Block button</h4>
        <div>
          <Button block={true} color="primary">primary block</Button>{' '}
        </div>
        <h4>Button Group</h4>
        <div>
          <ButtonGroup size="sm">
            <Button color="danger">Left</Button>
            <Button color="warning">Middle</Button>
            <Button color="success">Right</Button>
          </ButtonGroup>
        </div>

        <br/>
        <div style={{
            'height' : '200px'
          }}/>
    </div>);
  }
}

export default Demo;
