#!/usr/bin/node
/*
 * File: 3-script.js
 * Description:  Toggle classes
 */
document.addEventListener('DOMContentLoaded', () => {
  const toggle = document.querySelector('#toggle_header');
  const header = document.querySelector('header');

  toggle.addEventListener('click', () => {
    header.classList.toggle('green');
    header.classList.toggle('red');
  });
});
