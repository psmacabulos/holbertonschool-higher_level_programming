#!/usr/bin/env bash
# Holberton main.py generator for Python Data Structures: Lists, Tuples

create_main () {
    local file=$1
    local content=$2

    echo "#!/usr/bin/python3" > "$file"
    echo "$content" >> "$file"
    chmod u+x "$file"
}

create_main "0-main.py" '
print_list_integer = __import__("0-print_list_integer").print_list_integer

my_list = [1, 2, 3, 4, 5]
print_list_integer(my_list)
'

create_main "1-main.py" '
element_at = __import__("1-element_at").element_at

my_list = [1, 2, 3, 4, 5]
print(element_at(my_list, 3))
print(element_at(my_list, -1))
'

create_main "2-main.py" '
replace_in_list = __import__("2-replace_in_list").replace_in_list

my_list = [1, 2, 3, 4, 5]
print(replace_in_list(my_list, 3, 9))
print(my_list)
'

create_main "3-main.py" '
print_reversed_list_integer = __import__("3-print_reversed_list_integer").print_reversed_list_integer

my_list = [1, 2, 3, 4, 5]
print_reversed_list_integer(my_list)
'

create_main "4-main.py" '
new_in_list = __import__("4-new_in_list").new_in_list

my_list = [1, 2, 3, 4, 5]
new_list = new_in_list(my_list, 3, 9)

print(my_list)
print(new_list)
'

create_main "5-main.py" '
no_c = __import__("5-no_c").no_c

print(no_c("Best School"))
print(no_c("Chicago"))
print(no_c("C is fun!"))
'

create_main "6-main.py" '
print_matrix_integer = __import__("6-print_matrix_integer").print_matrix_integer

matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print_matrix_integer(matrix)
'

create_main "7-main.py" '
add_tuple = __import__("7-add_tuple").add_tuple

tuple_a = (1, 89)
tuple_b = (88, 11)
print(add_tuple(tuple_a, tuple_b))
'

create_main "8-main.py" '
multiple_returns = __import__("8-multiple_returns").multiple_returns

sentence = "At Holberton school, I learnt C!"
length, first = multiple_returns(sentence)
print("Length: {:d} - First character: {}".format(length, first))
'

create_main "9-main.py" '
max_integer = __import__("9-max_integer").max_integer

my_list = [1, 90, 2, 13, 34, 5]
print(max_integer(my_list))
'

create_main "10-main.py" '
divisible_by_2 = __import__("10-divisible_by_2").divisible_by_2

my_list = [0, 1, 2, 3, 4, 5]
print(divisible_by_2(my_list))
'

create_main "11-main.py" '
delete_at = __import__("11-delete_at").delete_at

my_list = [1, 2, 3, 4, 5]
print(delete_at(my_list, 2))
print(my_list)
'

create_main "12-main.py" '
a = 89
b = 10
a, b = b, a
print("a={:d} - b={:d}".format(a, b))
'

echo "✅ All main.py files created and made executable."
