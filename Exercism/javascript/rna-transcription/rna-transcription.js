//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
                      
// export const toRna = dnaStrand => {
//   var nucleotides =  { G: 'C',
//                        C: 'G',
//                        T: 'A',
//                        A: 'U'
//                       };

//   var rnaStrand = '';

//   for (var i = 0; i < dnaStrand.length; i++) {
//     rnaStrand += nucleotides[dnaStrand[i]]
//   }
//   return rnaStrand;
// };

const DNA = ['G', 'C', 'T', 'A'];
const RNA = ['C', 'G', 'A', 'U'];

export const toRna = (seq) => {
   return seq ? seq.split('').map(x => RNA[DNA.indexOf(x)]).join('') : '';
};
