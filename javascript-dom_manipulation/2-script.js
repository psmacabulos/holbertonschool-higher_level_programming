#!/usr/bin/node
/*
 * File: 2-script.js
 * Description: Add `.red` class
 */

document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('#red_header').addEventListener('click', () => {
    // add a class 'red' to the header element
    const header = document.querySelector('header');
    header.classList.add('red');
  });
});
