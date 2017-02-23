function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
};

madLib("hug", "gorgeous", "elephant");//"We shall HUG the GORGEOUS ELEPHANT"

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
};

isSubstring("this is super cool", "super");//true

function fizzBuzz(array) {
  result = []
  for(i = 0; i < array.length; i++) {
    if((array[i] % 5 === 0) ^ (array[i] % 3 === 0)) {
      result.push(array[i]);
    }
  }
  return result
};

fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15]); //[ 3, 5, 6, 9, 10 ]
