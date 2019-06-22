//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//


let COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];

// export const value = (arr) => {
//   let value1 = COLORS.indexOf(arr[0]).toString();
//   let value2 = COLORS.indexOf(arr[1]).toString();
//    return Number(value1 + value2);
// };

// export const value = ([str1,str2]) => {
//   let value1 = COLORS.indexOf(str1).toString();
//   let value2 = COLORS.indexOf(str2).toString();
//    return Number(value1 + value2);
// };

export const value = array => Number(array.map(item => COLORS.indexOf(item)).join(''));

