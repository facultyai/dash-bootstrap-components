import React from 'react';
import {Link} from 'gatsby';
import {Button, Col, Row} from 'reactstrap';

import Layout from '../components/layout';
import SEO from '../components/seo';
import style from '../style/index.module.css';

const IndexPage = () => (
  <Layout>
    <SEO title="Home" />
    <Row className={style.dbcdMasthead}>
      <Col>
        <h1 className="text-primary">Dash Bootstrap Components</h1>
        <p>
          <i>dash-bootstrap-components</i> is a library of Bootstrap components
          for use with Plotly Dash, that makes it easier to build consistently
          styled Dash apps with complex, responsive layouts.
        </p>
        <p>
          Style your apps with any Bootstrap 4 compatible stylesheet, including
          any of the many freely available themes, or your own customised
          stylesheets.
        </p>
        <Button>Get started</Button>
        <Button>Components</Button>
      </Col>
      <Col className="px-5 align-self-center">
        <div style={{width: 300, height: 300, margin: 'auto'}}>
          <object
            type="image/svg+xml"
            data="https://cdn.opensource.faculty.ai/dbc/assets/logo.svg"
          >
            dash-bootstrap-components logo
          </object>
        </div>
      </Col>
    </Row>
    <Row>
      <Col></Col>
    </Row>
    <Link to="/page-2/">Go to page 2</Link>
  </Layout>
);

export default IndexPage;
