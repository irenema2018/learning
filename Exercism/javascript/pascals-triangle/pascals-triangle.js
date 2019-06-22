//
// This is only a SKELETON file for the 'Pascals Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(num) {
    this.array = [];
       
    //    [1]         0
    //   [1 1]        1
    //  [1 2 1]       2
    // [1 3 3 1]      3
    //[1 4 6 4 1]     4
 
                      // big array length
    for (let i = 0; i < num; i++) {
      if (i === 0) {
        this.array.push([1]);
      } else {
        let previousArr = this.array[i-1];
        let currentArr = [1];
        currentArr.push(previousArr.map((numInArr, index) => 
          index === previousArr.length-1 ? 1 : numInArr + previousArr[index+1])
        )
      };
      this.array.push(currentArr);
    };
  }

  get lastRow() {
    return this.array[this.array.length-1];
  }

  get rows() {
    return this.array;
  }
}
