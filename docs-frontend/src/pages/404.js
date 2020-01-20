import React from 'react';
import {Jumbotron} from 'reactstrap';

import Layout from '../components/layout';
import SEO from '../components/seo';

const NotFoundPage = () => (
  <Layout>
    <SEO title="404: Not found" />
    <Jumbotron className="mt-5">
      <h1 className="text-danger">NOT FOUND</h1>
      <p>Sorry... that page doesn't appear to exist...</p>
    </Jumbotron>
  </Layout>
);

export default NotFoundPage;
