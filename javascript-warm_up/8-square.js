#!/usr/bin/node

const myArgs = +process.argv[2];

if (!Number.isNaN(myArgs)) {
  for (let row = 0; row < myArgs; row++) {
    let square = '';
    for (let col = 0; col < myArgs; col++) {
      square += 'X';
    }
    console.log(square);
  }
} else {
  console.log('Missing size');
}
