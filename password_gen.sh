#!/bin/bash

# Function to generate a random password
generate_password() {
    local length=$1
    local password=$(tr -dc '[:alnum:]' < /dev/urandom | fold -w "$length" | head -n 1)
    echo "$password"
}

# Function to check password strength
check_password_strength() {
    local password=$1

    # Check for minimum length
    if [ ${#password} -lt 12 ]; then
        echo "Password is too short. Minimum length: 12 characters."
        exit 1
    fi

    # Check for a mix of uppercase and lowercase letters
    if ! [[ "$password" =~ [[:upper:]] && "$password" =~ [[:lower:]] ]]; then
        echo "Password should include both uppercase and lowercase letters."
        exit 1
    fi

    # Check for at least one digit
    if ! [[ "$password" =~ [[:digit:]] ]]; then
        echo "Password should include at least one digit."
        exit 1
    fi

    # Check for at least one special character
    if ! [[ "$password" =~ [[:punct:]] ]]; then
        echo "Password should include at least one special character."
        exit 1
    fi
}

# Main script

# Set the desired password length
password_length=16

# Generate a random password
new_password=$(generate_password "$password_length")

# Check the strength of the password
check_password_strength "$new_password"

# Print the generated password
echo "Generated Password: $new_password"

