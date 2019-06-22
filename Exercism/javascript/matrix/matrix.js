//
// This is only a SKELETON file for the 'Matrix' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Matrix {

  constructor(string) {
    this.array = string.split('\n').map(line => line.split(' ')).map(subArray => subArray.map(Number));
  }
 
  get rows() {
    // 1, 2, 3   [0]
    // 4, 5, 6   [1]
    // 7, 8, 9   [2]
    return this.array;
  }
 
  get columns() {
    let newRowArray = []
    let newColumnArray = [];

    //            i  j   i  j
    // 1, 2, 3   [0][0] [0][1]
    // 4, 5, 6   [1][0] [1][1]
    // 7, 8, 9   [2][0] [2][1]
    // 3, 5, 7   [3][0] [3][1]

    // [          = newColumnArray 
    // 1, 4, 7, 3 = newRowArray
    // 2, 5, 8, 5 = newRowArray
    // 3, 6, 9, 7 = newRowArray
    // ]

    for (let j = 0; j < this.array[0].length; j++) {
  
      for (let i = 0; i < this.array.length; i++) {                          
          newRowArray.push(this.array[i][j]);
        }
 
        newColumnArray.push(newRowArray);
        newRowArray = [];
    }
 
    return newColumnArray;
  }
 }