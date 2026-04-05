#!/usr/bin/node
/*
 * File: 8-script.js
 * Description:  Say Hello!
 */

document.addEventListener('DOMContentLoaded', () => {
  const URL = 'https://hellosalut.stefanbohacek.com/?lang=fr';

  const fetchData = async () => {
    const res = await fetch(URL);

    if (!res) {
      throw new Error('Request failed');
    }
    return res.json();
  };

  const displayData = (data) => {
    const helloEl = document.querySelector('#hello');
    helloEl.textContent = data;
  };
  const init = async () => {
    try {
      const { hello } = await fetchData();
      displayData(hello);
    } catch (error) {
      console.error(error.message);
    }
  };

  init();
});
