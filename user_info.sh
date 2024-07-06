#!/bin/bash

# Make the script readable, writable, and executable by the current user
chmod u+rwx "$0"

# Display user information
echo "User Information:"
echo "----------------"
echo "Username: $USER"
echo "User ID: $UID"
echo "Group ID: $GID"
echo "Home Directory: $HOME"
echo "Shell: $SHELL"
echo "Login Name: $(id -F -n)"
echo "Real Name: $(id -F -n -r)"
echo "User Groups: $(id -G -n)"
echo "Login Time: $(last -1 | awk '{print $3,$4,$5}')"
echo "Current Working Directory: $PWD"

# Display hostname and OS information
echo "Hostname and OS Information:"
echo "----------------------------"
echo "Hostname: $(hostname)"
echo "OS Name: $(uname -s)"
echo "OS Version: $(uname -v)"

# Display CPU and memory information
echo "CPU and Memory Information:"
echo "---------------------------"
echo "CPU Type: $(sysctl -n hw.cputype)"
echo "CPU Speed: $(sysctl -n hw.cpufrequency)"
echo "Number of Cores: $(sysctl -n hw.physicalcpu)"
echo "Number of Logical Cores: $(sysctl -n hw.logicalcpu)"
echo "Total Memory: $(sysctl -n hw.memsize) bytes"

# Display disk space information
echo "Disk Space Information:"
echo "-----------------------"
echo "$(df -h)"

# Display network information
echo "Network Information:"
echo "-------------------"
echo "$(ifconfig | grep 'inet ')"