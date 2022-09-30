import Document, { Html, Head, Main, NextScript } from "next/document";
import laptopPhoneMockup from "assets/laptop-phone-mockup.png";

class CustomDocument extends Document {
  static async getInitialProps(ctx) {
    const initialProps = await Document.getInitialProps(ctx);
    return { ...initialProps };
  }

  render() {
    return (
      <Html lang="en-US">
        <Head>
          <meta property="og:image" content={laptopPhoneMockup} />
          <meta property="og:title" content="Comico" />
          <meta
            property="og:description"
            content="A no-nonsense, free comic book reader."
          />
          <meta property="og:image:width" content="1465" />
          <meta property="og:image:height" content="819" />
        </Head>
        <body>
          <Main />
          <NextScript />
        </body>
      </Html>
    );
  }
}

export default CustomDocument;
