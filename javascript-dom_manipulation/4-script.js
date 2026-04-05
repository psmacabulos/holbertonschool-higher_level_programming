#!/usr/bin/node
/*
 * File: 4-script.js
 * Description: DOM Manipulation task 4
 */

document.addEventListener('DOMContentLoaded', () => {
  const addItem = document.querySelector('#add_item');
  const lists = document.querySelector('ul.my_list');

  addItem.addEventListener('click', () => {
    el = document.createElement('li');
    el.textContent = 'Item';
    lists.appendChild(el);
  });
});
