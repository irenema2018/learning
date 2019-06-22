/* eslint-disable no-unused-vars */
//
// This is only a SKELETON file for the 'Bob' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const hey = (message) => {
  let result = '';
  if (message === message.toUpperCase() && message.endsWith('?') && /[A-Z]/g.test(message)) {
    result = 'Calm down, I know what I\'m doing!';
  } else if (message === message.toUpperCase() && /[a-z]/gi.test(message)) {
    result = 'Whoa, chill out!';
  } else if (message.trim().endsWith('?')) {
    result ='Sure.';
  } else if (message.trim() === '' || /[a-z]/gi.message) {result ='Fine. Be that way!';
  } else {
    result = 'Whatever.';
  }
  return result;
};
