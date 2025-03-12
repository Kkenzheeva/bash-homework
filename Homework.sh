#!/bin/bash

function k-pop {
    echo "Creating users and adding them to the blackpink group..."
    # Create users
    useradd jenny
    useradd rose
    useradd lisa
    useradd jisoo
    
    # Create the blackpink group
    groupadd blackpink
    
    # Add users to the blackpink group
    usermod -aG blackpink jenny
    usermod -aG blackpink rose
    usermod -aG blackpink lisa
    usermod -aG blackpink jisoo
    
    echo "Users created and added to blackpink group."
}

# Function to install WordPress
function wordpress {
    echo "Installing WordPress..."

    
    apt update -y
    apt install -y apache2 mysql-server php libapache2-mod-php php-mysql wget unzip

    
    cd /var/www/html
    wget https://wordpress.org/latest.tar.gz
    tar -xvzf latest.tar.gz
    rm latest.tar.gz

   
    chown -R www-data:www-data /var/www/html/wordpress
    chmod -R 755 /var/www/html/wordpress

   
    systemctl enable apache2
    systemctl restart apache2

    echo "WordPress installed"
}

function calculator {
    echo "Performing arithmetic operations on 12 and 4..."

   
    addition=$((12 + 4))
    subtraction=$((12 - 4))
    multiplication=$((12 * 4))
    division=$((12 / 4))

  
    echo "Addition (12 + 4): $addition"
    echo "Subtraction (12 - 4): $subtraction"
    echo "Multiplication (12 * 4): $multiplication"
    echo "Division (12 / 4): $division"
}

function binary {
    echo "Installing Tree and Terraform..."

    
    apt update -y
    apt install -y tree

   
    apt-get install -y software-properties-common
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
    sudo apt update -y
    sudo apt install -y terraform

    echo "Tree and Terraform installed."
}


