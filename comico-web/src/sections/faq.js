/** @jsx jsx */
import { jsx, Container, Box } from "theme-ui";
import SectionHeader from "components/section-header";
import Accordion from "components/accordion/accordion";
const faqs = [
  {
    title: "What data do you collect?",
    contents: (
      <div>
        Zero. We don't collect any kinds of data whatsoever. We only ask for
        internet permission to fetch the comic book data from the server. The
        code for the server is open-sourced, and you can go through it if you
        want.
      </div>
    ),
  },
  // {
  //   title: 'Why is the app not on play store?',
  //   contents: (
  //     <div>
  //       The app isn't available on play store for the simple reason that it would be banned.
  //       Although it is a hassle to install the app this way, there's just no other possible option.
  //       The app contains highly copy written materials and google doesn't allow that on their store.
  //     </div>
  //   ),
  // },
  {
    title: `Can we download a comic book to read for later?`,
    contents: (
      <div>
        Not yet unfortunately. We are working on it and hopefully it will be
        added soon. However, the images and comic book data is cached, so, it
        only downloads the images once, for any subsequent requests, it shows
        you the cached data so the bandwidth cost should be very minimal.
      </div>
    ),
  },
  {
    title: `I have a question / feature request / bug report`,
    contents: (
      <div>
        Please create an issue in the github repository for this app. The link
        can be found here. This is currently the only possible way to give
        feedback. We may open a discord server if there's enough interested
        users.
      </div>
    ),
  },
];
export default function Faq() {
  return (
    <section sx={{ variant: "section.faq" }} id="faq">
      <Container>
        <SectionHeader
          title="Frequently asked question"
          slogan="Get your question answer"
        />
        <Box
          sx={{
            display: "flex",
            width: ["100%", null, null, "650px", "745px"],
            flexDirection: "column",
            mx: "auto",
            my: -4,
          }}
        >
          <Accordion items={faqs} />
        </Box>
      </Container>
    </section>
  );
}
