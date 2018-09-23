import React, {Component} from 'react';
import {
  Alert,
  Badge,
  Button,
  ButtonGroup,
  Card,
  CardBody,
  CardDeck,
  CardFooter,
  CardGroup,
  CardHeader,
  CardImg,
  CardImgOverlay,
  CardSubtitle,
  CardText,
  CardTitle,
  Col,
  Container,
  Row,
} from '../src';

class Demo extends Component {
  render() {
    return (<Container>
        <h1>Dash Bootstrap Components</h1>
        <h2>Alerts</h2>
        <div>
          <Alert color="primary">
            This is a primary alert
          </Alert>
          <Alert color="secondary">
            This is a secondary alert
          </Alert>
          <Alert color="success">
            This is a success alert
          </Alert>
          <Alert color="danger">
            This is a danger alert
          </Alert>
          <Alert color="warning">
            This is a warning alert
          </Alert>
          <Alert color="info">
            This is a info alert
          </Alert>
          <Alert color="light">
            This is a light alert
          </Alert>
          <Alert color="dark">
            This is a dark alert
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

        <h2>Cards</h2>

        <Row>
          <Col md={6}>
            <Card color="dark" outline={true}>
              <CardHeader>Header</CardHeader>
              <CardBody>
                <CardTitle>This card has a header</CardTitle>
                <CardText>And some text in the body</CardText>
              </CardBody>
            </Card>
          </Col>
          <Col md={3}>
            <Card>
              <CardImg top={true} src="https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"/>
              <CardBody>
                <CardTitle>Card with image</CardTitle>
                <CardText>This card has an image</CardText>
              </CardBody>
            </Card>
          </Col>
          <Col md={3}>
            <Card>
              <CardBody>
                <CardTitle>Here's another card</CardTitle>
                <CardText>With some text, and a button</CardText>
                <Button color="success">Click here</Button>
              </CardBody>
            </Card>
          </Col>
        </Row>

        <h4>Card deck</h4>
        <CardDeck>
          <Card>
            <CardBody>
              <CardTitle>The first card</CardTitle>
              <CardText>
                This is a card with some text on it, it's the first one in the deck.
              </CardText>
            </CardBody>
          </Card>
          <Card>
            <CardBody>
              <CardTitle>The second card</CardTitle>
              <CardText>
                This is a card with some text on it, it's the second one in the deck. It has a bit more text in it so that we can see how the vertical spacing will work.
              </CardText>
            </CardBody>
          </Card>
          <Card outline={true} color="primary">
            <CardBody>
              <CardTitle>The third card</CardTitle>
              <CardSubtitle>...and the last :(</CardSubtitle>
              <CardText>
                This card doesn't have much text...
              </CardText>
              <Button color="danger">Click me</Button>
            </CardBody>
          </Card>
        </CardDeck>

        <br/>

        <h2>Columns</h2>
        <Row>
          <Col md={3}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
          <Col md={6}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A half width column</h4>
              <p>With some text below</p>
            </div>
          </Col>
          <Col md={3}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
        </Row>

        <h4>Row with no gutters</h4>
        <Row noGutters={true}>
          <Col md={3}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
          <Col md={6}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A half width column</h4>
              <p>With some text below</p>
            </div>
          </Col>
          <Col md={3}>
            <div style={{borderStyle: "solid", padding: "10px"}}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
        </Row>

        <br/>
        <div style={{
            'height' : '200px'
          }}/>
    </Container>);
  }
}

export default Demo;
