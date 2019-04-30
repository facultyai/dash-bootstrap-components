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
  CardLink,
  Col,
  Collapse,
  Container,
  DropdownMenu,
  DropdownMenuItem,
  Fade,
  Form,
  FormFeedback,
  FormGroup,
  FormText,
  Input,
  Jumbotron,
  Label,
  ListGroup,
  ListGroupItem,
  ListGroupItemHeading,
  ListGroupItemText,
  NavbarSimple,
  NavItem,
  NavLink,
  Popover,
  PopoverBody,
  PopoverHeader,
  Progress,
  Row,
  Tab,
  Tabs,
  Table,
  Textarea,
  Tooltip,
} from '../src';

class CollapseComponent extends Component {
  constructor(props) {
    super(props);
    this.toggle = this.toggle.bind(this);
    this.state = {
      collapse: false
    };
  }

  toggle() {
    this.setState({
      collapse: !this.state.collapse
    });
  }

  render() {
    return (<div>
      <Button onClick={this.toggle} style={{
          marginBottom: "1rem"
        }}>Open collapse</Button>
      <Collapse is_open={this.state.collapse}>
        {this.props.children}
      </Collapse>
    </div>);
  }
}

class FadeComponent extends Component {
  constructor(props) {
    super(props);
    this.toggle = this.toggle.bind(this);
    this.state = {
      fadeIn: true
    };
  }

  toggle() {
    this.setState({
      fadeIn: !this.state.fadeIn
    });
  }

  render() {
    return (<div>
      <Button onClick={this.toggle} style={{
          marginBottom: "1rem"
        }}>Toggle fade</Button>
      <Fade is_in={this.state.fadeIn}>
        {this.props.children}
      </Fade>
    </div>)
  }
}

class PopoverComponent extends Component {
  constructor(props) {
    super(props);
    this.toggle = this.toggle.bind(this);
    this.state = {popoverOpen: false};
  }

  toggle() {
    this.setState({
      popoverOpen: !this.state.popoverOpen
    })
  }

  render() {
    return(<div>
      <p>Click on the word <span id="popover-target" onClick={this.toggle}>popover</span></p>
      <Popover target="popover-target" is_open={this.state.popoverOpen} toggle={this.toggle}>
        <PopoverHeader>Popover header</PopoverHeader>
        <PopoverBody>Popover body</PopoverBody>
      </Popover>
    </div>);
  }
}

class Demo extends Component {
  render() {
    return (<React.Fragment>
      <NavbarSimple sticky="top" brand="Dash Bootstrap Components" brand_href="https://github.com/facultyai/dash-bootstrap-components">
        <NavItem>
          <NavLink href="https://www.asidatascience.com">A link</NavLink>
        </NavItem>
        <DropdownMenu nav in_navbar label="Menu">
          <DropdownMenuItem>Entry 1</DropdownMenuItem>
          <DropdownMenuItem>Entry 2</DropdownMenuItem>
          <DropdownMenuItem divider />
          <DropdownMenuItem>Entry 3</DropdownMenuItem>
        </DropdownMenu>
      </NavbarSimple>
      <Container>
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
          <Col md={3}>
            <Card color="dark" outline={true}>
              <CardHeader>Header</CardHeader>
              <CardBody>
                <h5 className="card-title">This card has a header</h5>
                <p className="card-text">And some text in the body</p>
              </CardBody>
            </Card>
          </Col>
          <Col md={3}>
            <Card>
              <CardImg top={true} src="https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"/>
              <CardBody>
                <h5 className="card-title">Card with image</h5>
                <p className="card-text">This card has an image</p>
              </CardBody>
            </Card>
          </Col>
          <Col md={3}>
            <Card>
              <CardBody>
                <h5 className="card-title">Here's another card</h5>
                <p className="card-text">With some text, and a button</p>
                <Button color="success">Click here</Button>
              </CardBody>
            </Card>
          </Col>
          <Col md={3}>
            <Card>
              <CardBody>
                <h5 className="card-title">Here's yet another card</h5>
                <p className="card-text">With some text, and some links</p>
                <CardLink href="https://www.asidatascience.com">External</CardLink>
                <CardLink href="/example">Internal</CardLink>
              </CardBody>
            </Card>
          </Col>
        </Row>

        <h4>Card deck</h4>
        <CardDeck>
          <Card>
            <CardBody>
              <h5 className="card-title">The first card</h5>
              <p className="card-text">
                This is a card with some text on it, it's the first one in the deck.
              </p>
            </CardBody>
          </Card>
          <Card>
            <CardBody>
              <h5 className="card-title">The second card</h5>
              <p className="card-text">
                This is a card with some text on it, it's the second one in the deck. It has a bit more text in it so that we can see how the vertical spacing will work.
              </p>
            </CardBody>
          </Card>
          <Card outline={true} color="primary">
            <CardBody>
              <h5 className="card-title">The third card</h5>
              <h6 className="card-subtitle">...and the last :(</h6>
              <p className="card-text">
                This card doesn't have much text...
              </p>
              <Button color="danger">Click me</Button>
            </CardBody>
          </Card>
        </CardDeck>

        <br/>

        <h2>Collapse</h2>
        <CollapseComponent>
          <Card>
            <CardBody>
              This content is hidable in the collapse element.
            </CardBody>
          </Card>
        </CollapseComponent>

        <br/>

        <h2>Columns</h2>
        <Row>
          <Col md={3}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
          <Col md={6}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
              <h4>A half width column</h4>
              <p>With some text below</p>
            </div>
          </Col>
          <Col md={3}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
        </Row>

        <h4>Row with no gutters</h4>
        <Row no_gutters={true}>
          <Col md={3}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
              <h4>A quarter width column</h4>
            </div>
          </Col>
          <Col md={6}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
              <h4>A half width column</h4>
              <p>With some text below</p>
            </div>
          </Col>
          <Col md={3}>
            <div style={{
              borderStyle: "solid",
              padding: "10px"
            }}>
            <h4>A quarter width column</h4>
          </div>
        </Col>
      </Row>

      <br/>

      <h2>DropdownMenu</h2>
      <DropdownMenu label="Toggle" caret={true}>
        <DropdownMenuItem header={true}>Heading</DropdownMenuItem>
        <DropdownMenuItem>An item</DropdownMenuItem>
        <DropdownMenuItem divider={true}/>
        <DropdownMenuItem header={true}>Another heading</DropdownMenuItem>
        <DropdownMenuItem>Another item</DropdownMenuItem>
      </DropdownMenu>

      <br/>

      <h2>Fade</h2>

      <FadeComponent>
        <Card>
          <CardBody>
            <p className="card-text">This content fades in and out</p>
          </CardBody>
        </Card>
      </FadeComponent>

      <br/>

      <h2>Form</h2>
      <Form>
        <FormGroup>
          <Label for="exampleEmail">Email</Label>
          <Input type="email" name="email" id="exampleEmail" placeholder="with a placeholder" valid/>
          <FormFeedback valid>That email is valid!</FormFeedback>
        </FormGroup>
        <FormGroup>
          <Label for="examplePassword">Password</Label>
          <Input type="password" name="password" id="examplePassword" placeholder="password placeholder" invalid/>
          <FormFeedback>That password is invalid... :(</FormFeedback>
        </FormGroup>
        <FormGroup>
          <Label for="exampleText">Text Area</Label>
          <Textarea id="exampleText"/>
        </FormGroup>
        <Button>Submit</Button>
      </Form>

      <br/>

      <h2>Jumbotron</h2>
      <Jumbotron>
        <h2>This is a jumbotron</h2>
        <p>Pretty big huh?</p>
        <Button color="danger">Click here</Button>
      </Jumbotron>

      <br/>

      <h2>ListGroup</h2>

      <ListGroup>
        <ListGroupItem action={true} color="primary">Item 1</ListGroupItem>
        <ListGroupItem disabled={true}>Item 2</ListGroupItem>
        <ListGroupItem>Item 3</ListGroupItem>
        <ListGroupItem>
          <ListGroupItemHeading>Item 4 heading</ListGroupItemHeading>
          <ListGroupItemText>Item 4 text</ListGroupItemText>
        </ListGroupItem>
      </ListGroup>

      <br/>

      <h2>Popover</h2>
      <PopoverComponent/>

      <br/>

      <h2>Progress</h2>
      <Progress value={40} striped={true} animated={true} />

      <br/>

      <h2>Table</h2>
      <Table hover={true} responsive={true} striped={true} size="md">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Tom</td>
            <td>Cruise</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jodie</td>
            <td>Foster</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Chadwick</td>
            <td>Boseman</td>
          </tr>
        </tbody>
      </Table>

      <br/>

      <h2>Tabs</h2>
      <Tabs>
        <Tab tab_id="1" label="Tab 1"><p>This is tab 1</p></Tab>
        <Tab tab_id="2" label="Tab 2">Tab 2</Tab>
      </Tabs>

      <br/>


      <h2>Tooltip</h2>
      <p>I wonder what <span id="tooltip-target">floccinaucinihilipilification</span> means?</p>
      <Tooltip target="tooltip-target">Noun: rare, the action or habit of estimating something as worthless.</Tooltip>
      <div style={{
          'height' : '200px'
        }}/>
      </Container>
      </React.Fragment>);
  }
}

export default Demo;
