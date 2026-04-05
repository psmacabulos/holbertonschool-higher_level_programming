#!/usr/bin/node
/*
 * File: 7-script.js
 * Description: Star Wars movies
 */

document.addEventListener('DOMContentLoaded', () => {
  const URL = 'https://swapi-api.hbtn.io/api/films/?format=json';
  const listMovies = document.querySelector('ul#list_movies');

  const getMovies = async () => {
    const response = await fetch(URL);
    if (!response) {
      throw new Error('Request failed');
    }
    return response.json();
  };

  const render = (data) => {
    const { results } = data;

    results.forEach(movie => {
      const el = document.createElement('li');
      el.textContent = movie.title;
      listMovies.appendChild(el);
    });
  };

  const init = async () => {
    try {
      const data = await getMovies();
      render(data);
    } catch (error) {
      console.error(error.message);
    }
  };

  init();
});
