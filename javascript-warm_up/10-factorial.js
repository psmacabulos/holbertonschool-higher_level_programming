#!/usr/bin/node

const number = +process.argv[2];

if (Number.isNaN(number)) {
  console.log(1);
} else {
  console.log(factorial(number));
}

function factorial (number) {
  // base case
  if ((number === 0) || (number === 1)) {
    return 1;
  }
  return number * factorial(number - 1);
}
