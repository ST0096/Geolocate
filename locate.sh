#!/bin/bash

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq is not installed. Please install jq and try again."
    exit 1
fi

# Clear the terminal
clear

# ASCII Art
echo -e "\e[1;31m"

echo "#########################################################################################################################################################"
echo "# ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄      ▄▄▄▄▄▄▄▄▄  #"
echo "#▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌    ▐░░░░░░░░░▌ #"
echo "#▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀█░▌   ▐░█░█▀▀▀▀▀█░▌#"
echo "#▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌     ▐░▌     ▐░▌                         ▐░▌   ▐░▌▐░▌    ▐░▌#"
echo "#▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄                ▐░▌   ▐░▌ ▐░▌   ▐░▌#"
echo "#▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌      ▄▄▄▄▄▄▄▄▄█░▌   ▐░▌  ▐░▌  ▐░▌#"
echo "#▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌     ▐░▌     ▐░█▀▀▀▀▀▀▀▀▀      ▐░░░░░░░░░░░▌   ▐░▌   ▐░▌ ▐░▌#"
echo "#▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌     ▐░▌     ▐░▌               ▐░█▀▀▀▀▀▀▀▀▀    ▐░▌    ▐░▌▐░▌#"
echo "#▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄      ▐░█▄▄▄▄▄▄▄▄▄  ▄ ▐░█▄▄▄▄▄█░█░▌#"
echo "#▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌     ▐░▌     ▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░▌ ▐░░░░░░░░░▌ #"
echo "# ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀       ▀       ▀▀▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀   ▀▀▀▀▀▀▀▀▀  #"
echo "#########################################################################################################################################################"

echo -e "\e[0m"

# Prompt the user for an IP address
read -p "Enter an IP address: " ip_address

# Fetch geolocation data
response=$(curl -s "https://ipinfo.io/${ip_address}/json")

# Parse and display the data
echo -e "\e[1;34m"
echo "========================================"
echo " IP Address Geolocation Information"
echo "========================================"
echo -e "\e[0m"
echo -e "\e[1;32m"
echo "IP Address: $(echo $response | jq -r '.ip')"
echo "Hostname  : $(echo $response | jq -r '.hostname')"
echo "City      : $(echo $response | jq -r '.city')"
echo "Region    : $(echo $response | jq -r '.region')"
echo "Country   : $(echo $response | jq -r '.country')"
echo "Location  : $(echo $response | jq -r '.loc')"
echo "Org       : $(echo $response | jq -r '.org')"
echo "Timezone  : $(echo $response | jq -r '.timezone')"
echo -e "\e[0m"

# Check for errors in the response
if [[ $(echo $response | jq -r '.bogon') == "true" ]]; then
    echo -e "\e[1;31m"
    echo "Error: The IP address entered is not valid or is a reserved IP address."
    echo -e "\e[0m"
fi

# Extract latitude and longitude
latitude=$(echo $response | jq -r '.loc' | cut -d ',' -f 1)
longitude=$(echo $response | jq -r '.loc' | cut -d ',' -f 2)

# Display extra information
echo -e "\e[1;34m"
echo "=================================================="
echo "Extra Information about IP Address"
echo "=================================================="
echo -e "\e[0m"
echo -e "\e[1;32m"
echo "Latitude:   $latitude"
echo "Longitude:  $longitude"
echo "Google Maps:  https://www.google.com/maps?q=$latitude,$longitude,15z?entry=ttu"
echo -e "\e[0m"

echo -e "\e[1;34m"
echo "========================================"
echo -e "\e[0m"