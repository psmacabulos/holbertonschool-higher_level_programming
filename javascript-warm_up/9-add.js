#!/usr/bin/node

const first = +process.argv[2];
const second = +process.argv[3];

function addNumbers (a, b) {
  if (Number.isNaN(a) || Number.isNaN(b)) {
    console.log('NaN');
    return;
  }
  console.log(a + b);
}
addNumbers(first, second);
