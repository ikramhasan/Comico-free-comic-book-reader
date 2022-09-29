/** @jsx jsx */
import { jsx } from 'theme-ui';
import { motion } from 'framer-motion';

export const AccordionButton = ({ children, ...rest }) => (
  <div sx={styles.buttonToggle} {...rest}>
    {children}
  </div>
);

const styles = {
  buttonToggle: {
    display: 'flex',
    color: 'heading_secondary',
    cursor: 'pointer',
    border: 'none',
    fontSize: [2, null, 3],
    fontWeight: 500,
    letterSpacing: -0.5,
    position: 'relative',
    paddingLeft: ['33px', null, '45px'],
    lineHeight: [1.5, null, 1.8],
    '& > span': {
      position: 'absolute',
      width: 20,
      height: 20,
      borderRadius: '50%',
      backgroundColor: '#25CB9E',
      top: ['2px', null, '6px'],
      left: [0, null, '13px'],
      '&.open:after': {
        opacity: 0,
      },
      '&::before': {
        position: 'absolute',
        content: '""',
        height: '2px',
        width: 10,
        backgroundColor: 'white',
        top: '50%',
        left: '50%',
        transform: 'translate(-50% , -50%)',
      },
      '&::after': {
        position: 'absolute',
        content: '""',
        height: 10,
        width: '2px',
        backgroundColor: 'white',
        top: '50%',
        left: '50%',
        transform: 'translate(-50% , -50%)',
        transition: 'all 0.25s',
      },
    },
  },
};

const variants = {
  open: {
    height: 'auto',
    marginTop: 12,
  },
  closed: { height: 0, marginTop: 0 },
};
export function AccordionContents({ isOpen, ...props }) {
  return (
    <motion.div
      initial="closed"
      animate={isOpen ? 'open' : 'closed'}
      variants={variants}
      sx={{
        overflowY: 'hidden',
        fontSize: [1, null, 2],
        lineHeight: [1.85, null, null, 1.9, 2],
        color: '#343D48',
        paddingLeft: ['33px', null, '45px'],
        ' > div ': {
          paddingBottom: [1, 2],
        },
      }}
      {...props}
    />
  );
}

export const AccordionItem = ({ isOpen, children, ...rest }) => (
  <div
    css={{
      overflow: 'hidden',
      padding: '17px 0',
      borderBottom: '1px solid #E5ECF4',
      '&:last-child': {
        borderBottom: '0px solid',
      },
    }}
    {...rest}
  >
    {children}
  </div>
);

export const preventClose = (state, changes) =>
  changes.type === 'closing' && state.openIndexes.length < 2
    ? { ...changes, openIndexes: state.openIndexes }
    : changes;

export const single = (state, changes) =>
  changes.type === 'opening'
    ? { ...changes, openIndexes: changes.openIndexes.slice(-1) }
    : changes;

export const combineReducers = (...reducers) => (state, changes) =>
  reducers.reduce((acc, reducer) => reducer(state, acc), changes);
