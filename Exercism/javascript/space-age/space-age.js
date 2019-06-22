//
// This is only a SKELETON file for the 'Space Age' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const age = (star, seconds) => {
  let orbitalYear = {
    earth:     1,
    mercury:   0.2408467,
    venus:     0.61519726,
    mars:      1.8808158,
    jupiter:   11.862615,
    saturn:    29.447498,
    uranus:    84.016846,
    neptune:   164.79132 
  };
  let spaceAge = 0;

  if (orbitalYear.hasOwnProperty(star)) {
    spaceAge = seconds / (orbitalYear[star]*365.25*24*60*60)
  }

  // return Math.round(spaceAge*100)/100;
  return Number(spaceAge.toFixed(2));
};
