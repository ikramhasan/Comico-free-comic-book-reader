import React from 'react';
import { ThemeProvider } from 'theme-ui';
import { StickyProvider } from 'contexts/app/app.provider';
import theme from 'theme';
import SEO from 'components/seo';
import Layout from 'components/layout';
import Banner from 'sections/banner';
import KeyFeature from 'sections/key-feature';
import CoreFeature from 'sections/core-feature';
import Feature from 'sections/feature';
import PartnerSection from 'sections/partner';
import WorkFlow from 'sections/workflow';
import TestimonialCard from 'sections/testimonial';
import SecurePayment from 'sections/secure-payment';
import Package from 'sections/package';
import Faq from 'sections/faq';

export default function IndexPage() {
  return (
    <ThemeProvider theme={theme}>
      <StickyProvider>
        <Layout>
          <SEO title="Comico - A no-nonsense comic reader" />
          <Banner />
          <KeyFeature />
          <CoreFeature />
          {/* <Feature /> */}
          {/* <PartnerSection /> */}
          <WorkFlow />
          {/* <TestimonialCard /> */}
          {/* <SecurePayment /> */}
          {/* <Package /> */}
          <Faq />
        </Layout>
      </StickyProvider>
    </ThemeProvider>
  );
}
