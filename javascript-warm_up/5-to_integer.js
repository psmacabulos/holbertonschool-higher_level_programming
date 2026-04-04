#!/usr/bin/node

const { argv } = require('node:process');

const first = +argv[2];

if (!Number.isNaN(first)) {
  console.log('My number: ' + first);
} else {
  console.log('Not a number');
}
