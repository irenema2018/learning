// Alice	One for Alice, one for me.
// Bob  	One for Bob, one for me.
//          One for you, one for me.
// Zaphod	One for Zaphod, one for me.

export const twoFer = (string = '') => {
    return (string == '' ? 'One for you, one for me.' : `One for ${string}, one for me.`)
//     if (string == '') {
//         return 'One for you, one for me.';
//     } else {
//         return `One for ${string}, one for me.`;
//     }
};


