// import { Link } from "gatsby"
import PropTypes from 'prop-types';
import React, {useState} from 'react';
import {Link} from 'gatsby';
import {
  Collapse,
  Container,
  Nav,
  NavItem,
  Navbar,
  NavbarBrand,
  NavbarToggler
} from 'reactstrap';

const Header = ({siteTitle}) => {
  const [isOpen, setIsOpen] = useState(false);
  return (
    <Navbar color="light" light expand="md">
      <Container>
        <NavbarBrand>{siteTitle}</NavbarBrand>
        <NavbarToggler onClick={() => setIsOpen(!isOpen)} />
        <Collapse isOpen={isOpen} navbar>
          <Nav className="mr-auto" navbar>
            <NavItem>
              <Link to="/" className="nav-link" activeClassName="active">
                Home
              </Link>
            </NavItem>
            <NavItem>
              <Link to="/docs" className="nav-link" activeClassName="active">
                Documentation
              </Link>
            </NavItem>
            <NavItem>
              <Link
                to="/l/components"
                className="nav-link"
                activeClassName="active"
              >
                Components
              </Link>
            </NavItem>
            <NavItem>
              <Link
                to="/examples"
                className="nav-link"
                activeClassName="active"
              >
                Examples
              </Link>
            </NavItem>
          </Nav>
        </Collapse>
      </Container>
    </Navbar>
  );
};

Header.propTypes = {
  siteTitle: PropTypes.string
};

Header.defaultProps = {
  siteTitle: ``
};

export default Header;
