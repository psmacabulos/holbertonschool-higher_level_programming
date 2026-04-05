#!/usr/bin/node
/*
 * File: 5-script.js
 * Description: Change the text
 */

document.addEventListener('DOMContentLoaded', () => {
  const header = document.querySelector('header');
  const update = document.querySelector('#update_header');

  update.addEventListener('click', () => {
    header.textContent = 'New Header!!!';
  });
});
