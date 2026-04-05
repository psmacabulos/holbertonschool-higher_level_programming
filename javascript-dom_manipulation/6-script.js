#!/usr/bin/node
/*
 * File: 6-script.js
 * Description: Star wars character
 */

document.addEventListener('DOMContentLoaded', () => {
  const URL = 'https://swapi-api.hbtn.io/api/people/5/?format=json';
  const character = document.querySelector('#character');

  const fetchData = async () => {
    try {
      const response = await fetch(URL);
      if (!response.ok) {
        throw new Error(`Response status: ${response.status}`);
      }
      const data = await response.json();
      character.textContent = data.name;
    } catch (error) {
      console.error(error.message);
    }
  };
  fetchData();
});
