/* eslint-disable react/prop-types */
import React, {useState} from 'react';

import {
  Alert,
  Badge,
  Button,
  ButtonGroup,
  Card,
  CardBody,
  CardFooter,
  CardHeader,
  CardImg,
  CardLink,
  Checklist,
  Col,
  Collapse,
  Container,
  DropdownMenu,
  DropdownMenuItem,
  Fade,
  Form,
  FormFeedback,
  Input,
  Label,
  ListGroup,
  ListGroupItem,
  NavbarSimple,
  NavItem,
  NavLink,
  Popover,
  PopoverBody,
  PopoverHeader,
  Progress,
  RadioItems,
  Row,
  Table,
  Textarea,
  Tooltip
} from '../src';

function StateWrapper({tag: Tag, ...otherProps}) {
  // helper to mimic setProps functionality
  const [state, setState] = useState(otherProps);
  return <Tag setProps={props => setState({...state, ...props})} {...state} />;
}

function CollapseComponent({children}) {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <div>
      <Button setProps={() => setIsOpen(!isOpen)}>Toggle collapse</Button>
      <Collapse is_open={isOpen}>{children}</Collapse>
    </div>
  );
}

const FadeComponent = ({children}) => {
  const [isIn, setIsIn] = useState(false);

  return (
    <div>
      <Button setProps={() => setIsIn(!isIn)}>Toggle fade</Button>
      <Fade is_in={isIn}>{children}</Fade>
    </div>
  );
};

const PopoverComponent = () => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <div>
      <p>
        Click on the word{' '}
        <span
          id="popover-target"
          style={{textDecoration: 'underline', cursor: 'pointer'}}
          onClick={() => setIsOpen(!isOpen)}
        >
          popover
        </span>
      </p>
      <Popover target="popover-target" is_open={isOpen}>
        <PopoverHeader>Header</PopoverHeader>
        <PopoverBody>This is the body of the popover</PopoverBody>
      </Popover>
    </div>
  );
};

const Demo = () => (
  <React.Fragment>
    <NavbarSimple
      sticky="top"
      brand="Dash Bootstrap Components"
      brand_href="https://github.com/facultyai/dash-bootstrap-components"
    >
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
    <Container class_name="mt-3">
      <h1>Dash Bootstrap Components - Demo</h1>
      <p>
        This demonstrates all of the Dash Bootstrap Components as React
        components. It is mainly intended as a tool for development.
      </p>
      <h2>Alerts</h2>
      <div>
        <Alert color="primary">This is a primary alert</Alert>
        <Alert color="secondary">This is a secondary alert</Alert>
        <Alert color="success">This is a success alert</Alert>
        <Alert color="danger">This is a danger alert</Alert>
        <Alert color="warning">This is a warning alert</Alert>
        <Alert color="info">This is a info alert</Alert>
        <Alert color="light">This is a light alert</Alert>
        <Alert color="dark">This is a dark alert</Alert>
      </div>

      <h2>Badges</h2>
      <h4>
        {'A heading with a badge '}
        <Badge color="primary">New!</Badge>
      </h4>
      <p>
        {'Do you take the '}
        <Badge pill={true} color="danger">
          red pill
        </Badge>
        {' or the '}
        <Badge pill={true} color="primary">
          blue pill
        </Badge>
      </p>

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

      <h4>Outline buttons</h4>
      <div>
        <Button outline={true} color="primary">
          primary
        </Button>{' '}
        <Button outline={true} color="secondary">
          secondary
        </Button>{' '}
        <Button outline={true} color="success">
          success
        </Button>{' '}
        <Button outline={true} color="info">
          info
        </Button>{' '}
        <Button outline={true} color="warning">
          warning
        </Button>{' '}
        <Button outline={true} color="danger">
          danger
        </Button>{' '}
        <Button outline={true} color="link">
          link
        </Button>
      </div>

      <h4>Button Group</h4>
      <div>
        <ButtonGroup size="sm">
          <Button color="danger">Left</Button>
          <Button color="warning">Middle</Button>
          <Button color="success">Right</Button>
        </ButtonGroup>
      </div>

      <h2>Cards</h2>

      <Row>
        <Col md={3}>
          <Card color="dark" outline={true}>
            <CardHeader>Header</CardHeader>
            <CardBody>
              <h5 className="card-title">This card has a header</h5>
              <p className="card-text">And some text in the body</p>
            </CardBody>
            <CardFooter>Footer</CardFooter>
          </Card>
        </Col>
        <Col md={3}>
          <Card>
            <CardImg
              top={true}
              src="https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"
            />
            <CardBody>
              <h5 className="card-title">Card with image</h5>
              <p className="card-text">This card has an image</p>
            </CardBody>
          </Card>
        </Col>
        <Col md={3}>
          <Card>
            <CardBody>
              <h5 className="card-title">Here&apos;s another card</h5>
              <p className="card-text">With some text, and a button</p>
              <Button color="success">Click here</Button>
            </CardBody>
          </Card>
        </Col>
        <Col md={3}>
          <Card>
            <CardBody>
              <h5 className="card-title">Here&apos;s yet another card</h5>
              <p className="card-text">With some text, and some links</p>
              <CardLink href="https://www.asidatascience.com">
                External
              </CardLink>
              <CardLink href="/example">Internal</CardLink>
            </CardBody>
          </Card>
        </Col>
      </Row>

      <h2>Collapse</h2>
      <CollapseComponent>
        <Card>
          <CardBody>This content is hidable in the collapse element.</CardBody>
        </Card>
      </CollapseComponent>

      <h2>Columns</h2>
      <Row>
        <Col md={3}>
          <div
            style={{
              borderStyle: 'solid',
              padding: '10px'
            }}
          >
            <h4>A quarter width column</h4>
          </div>
        </Col>
        <Col md={6}>
          <div
            style={{
              borderStyle: 'solid',
              padding: '10px'
            }}
          >
            <h4>A half width column</h4>
            <p>With some text below</p>
          </div>
        </Col>
        <Col md={3}>
          <div
            style={{
              borderStyle: 'solid',
              padding: '10px'
            }}
          >
            <h4>A quarter width column</h4>
          </div>
        </Col>
      </Row>

      <h2>DropdownMenu</h2>
      <DropdownMenu label="Toggle" caret={true}>
        <DropdownMenuItem header={true}>Heading</DropdownMenuItem>
        <DropdownMenuItem>An item</DropdownMenuItem>
        <DropdownMenuItem divider={true} />
        <DropdownMenuItem header={true}>Another heading</DropdownMenuItem>
        <DropdownMenuItem>Another item</DropdownMenuItem>
      </DropdownMenu>

      <h2>Fade</h2>

      <FadeComponent>
        <Card>
          <CardBody>
            <p className="card-text">This content fades in and out</p>
          </CardBody>
        </Card>
      </FadeComponent>

      <h2>Form</h2>
      <Form>
        <div>
          <Label html_for="exampleEmail">Email</Label>
          <Input
            type="email"
            name="email"
            id="exampleEmail"
            placeholder="with a placeholder"
            valid={true}
          />
          <FormFeedback type="valid">That email is valid!</FormFeedback>
        </div>
        <div>
          <Label html_for="examplePassword">Password</Label>
          <Input
            type="password"
            name="password"
            id="examplePassword"
            placeholder="password placeholder"
            invalid={true}
          />
          <FormFeedback>That password is invalid... :(</FormFeedback>
        </div>
        <div>
          <Label html_for="exampleText">Text Area</Label>
          <Textarea id="exampleText" />
        </div>
        <Button>Submit</Button>
      </Form>

      <h2>ListGroup</h2>

      <ListGroup>
        <ListGroupItem action={true} color="primary">
          Item 1
        </ListGroupItem>
        <ListGroupItem disabled={true}>Item 2</ListGroupItem>
        <ListGroupItem>Item 3</ListGroupItem>
        <ListGroupItem>
          <h3>Item 4 heading</h3>
          <p>Item 4 text</p>
        </ListGroupItem>
      </ListGroup>

      <h2>Popover</h2>
      <PopoverComponent />

      <h2>Progress</h2>
      <Progress value={40} striped={true} animated={true} />

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
      <h2>Tooltip</h2>
      <p>
        I wonder what{' '}
        <span id="tooltip-target">floccinaucinihilipilification</span> means?
      </p>
      <Tooltip target="tooltip-target">
        Noun: rare, the action or habit of estimating something as worthless.
      </Tooltip>

      <StateWrapper
        tag={RadioItems}
        id="ri"
        options={[...Array(5).keys()].map(i => ({
          label: `Item ${i}`,
          value: i
        }))}
      />

      <StateWrapper
        tag={Checklist}
        id="cl"
        options={[...Array(5).keys()].map(i => ({
          label: `Item ${i}`,
          value: i
        }))}
      />
      <div
        style={{
          height: '200px'
        }}
      />
    </Container>
  </React.Fragment>
);

export default Demo;
