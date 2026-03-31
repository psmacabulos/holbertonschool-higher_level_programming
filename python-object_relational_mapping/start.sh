#!/bin/bash

# Create task files for Holberton Database + Python project

echo "Creating task files..."

touch 0-select_states.py
touch 1-filter_states.py
touch 2-my_filter_states.py
touch 3-my_safe_filter_states.py
touch 4-cities_by_state.py
touch 5-filter_cities.py

touch model_state.py
touch model_city.py
touch 7-model_state_fetch_all.py
touch 8-model_state_fetch_first.py
touch 9-model_state_filter_a.py
touch 10-model_state_my_get.py
touch 11-model_state_insert.py
touch 12-model_state_update_id_2.py
touch 13-model_state_delete_a.py
touch 14-model_city_fetch_by_state.py
touch README.md

echo "Making files executable..."
chmod +x *.py
chmod +x start.sh

echo "Done! Files created and permissions set."
