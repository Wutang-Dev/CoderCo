#!/bin/bash

#basic function to echo hello world
function hello_world() {
    echo "Hello World"
}
#call the function
hello_world

#function to greet person by local variable
function greet_person() {
    local name="$1"
    echo "Hello, $name!"
}   

#call the greet_person function with a name argument
greet_person "Ravi"

#function to print information about the comand line arguments
function print_arguments() {    
    echo "Number of arguments: $#"
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "All arguments: $@"
}
print_arguments "Lebron" "Kobe" "Alan"

#greet function that encporates a user input using read command
greet_user() {
    read -p "What is your your name?" user_name
    echo "Hello, $user_name!"
}
#call the greet_user function
greet_user

#greet function with a local variable and if statement that echoes what is your name
greet() {
    local name
    read -p "What is your name? " name
    if [ -n "$name" ]; then
        echo "Hello, $name!"
    else
        echo "You didn't enter a name."
    fi
}
#call the greet_user_with_local_variable function
greet

#function to validate a users age , using error handling and if statement to check if the users age is 18
validate_age() {
    local age
    read -p "Please enter your age: " age
    if ! [[ "$age" =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid number."
        return 1
    fi
    if [ "$age" -lt 18 ]; then
        echo "You are not old enough to access this content."
        return 1
    else
        echo "Access granted. You are $age years old."
    fi
}
#call the validate_age function
validate_age

function get_file_count with pipe to count the number of files in the current directory
get_file_count() {
    local file_count
    file_count=$(ls -1 | wc -l)
    echo "Number of files in the current directory: $file_count"
}
#call the get_file_count function
get_file_count

#function to calculate md5checksum
calculate_md5(){
    local file="$1"
    md5sum "$file"
}
calculate_md5 "test.txt"

#function to calculate sha256checksum
calculate_sha256(){
    local file="$1"
    sha256sum "$file"
}
calculate_sha256 "test.txt"

#function to compare two checksums
compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"
    if [ "$checksum1" == "$checksum2" ]; then
        echo "Checksums match."
    else
        echo "Checksums do not match."
    fi
}
#call the compare_checksums function
checksum1=$(calculate_md5 "test.txt" | awk '{print $1}')
checksum2=$(calculate_sha256 "test.txt" | awk '{print $1}')
compare_checksums "$checksum1" "$checksum2"