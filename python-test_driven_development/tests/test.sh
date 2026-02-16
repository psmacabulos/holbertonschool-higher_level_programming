#!/bin/bash
# ============================================================
# Holberton / ALX - TDD Test Files Generator
# Creates missing doctest .txt files inside tests/ folder
# ============================================================

set -e

mkdir -p tests

TASKS=(
"0-add_integer"
"2-matrix_divided"
"3-say_my_name"
"4-print_square"
"5-text_indentation"
"6-max_integer"
"100-matrix_mul"
"101-lazy_matrix_mul"
)

for task in "${TASKS[@]}"
do
    TEST_FILE="tests/${task}.txt"

    if [ ! -f "$TEST_FILE" ]; then
        cat <<EOF > "$TEST_FILE"
>>> func = __import__('${task}')

# Example:
# >>> func.some_function()
# Expected output here

EOF
        echo "Created $TEST_FILE"
    else
        echo "$TEST_FILE already exists — skipped"
    fi

done

chmod -R +x tests

echo "All test files generated successfully."
