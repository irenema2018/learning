import { arrayExpression } from "@babel/types";

//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//


export const isPangram = string => {
  let englishArr = string.toLowerCase().match(/[a-z]/g);
  let alphabets = new Set(englishArr);
    return alphabets.size === 26;
};
  