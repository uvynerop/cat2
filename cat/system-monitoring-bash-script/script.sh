#!/bin/bash

# Define thresholds
CPU_THRESHOLD=60
MEM_THRESHOLD=60

# Email address to send notifications
EMAIL="name@example.com"

# Function to check CPU usage
check_cpu_usage() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    if (( $(echo "$cpu_usage >= $CPU_THRESHOLD" | bc -l) )); then
        echo "CPU usage is above threshold: $cpu_usage%"
        # Send email notification
        echo "Warning: CPU usage is above threshold. Current usage: $cpu_usage%" | mail -s "CPU Usage Alert" $EMAIL
    else
        echo "CPU usage is within threshold: $cpu_usage%"
    fi
}

# Function to check memory usage
check_memory_usage() {
    local mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    if (( $(echo "$mem_usage >= $MEM_THRESHOLD" | bc -l) )); then
        echo "Memory usage is above threshold: $mem_usage%"
        # Send email notification
        echo "Warning: Memory usage is above threshold. Current usage: $mem_usage%" | mail -s "Memory Usage Alert" $EMAIL
    else
        echo "Memory usage is within threshold: $mem_usage%"
    fi
}

# Main function to monitor system resources
main() {
    echo "Monitoring system resources..."
    check_cpu_usage
    check_memory_usage
}

# Execute the main function
main

