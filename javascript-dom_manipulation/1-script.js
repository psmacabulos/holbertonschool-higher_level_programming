#!/usr/bin/node
/*
 * File: 1-script.js
 * Description: DOM Manipulation task 1
 */

document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('#red_header').addEventListener('click', () => {
    document.querySelector('header').style.color = '#FF0000';
  });
});
