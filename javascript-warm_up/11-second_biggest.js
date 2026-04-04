#!/usr/bin/node

const number = process.argv.slice(2);

if (!number[0] || number.length === 1) {
  console.log(0);
} else {
  // convert to number first
  number.forEach(number => +number);
  const sorted = number.sort((a, b) => b - a);
  console.log(sorted[1]);
}
