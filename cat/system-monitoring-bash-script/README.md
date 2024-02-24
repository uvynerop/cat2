# System Monitoring and Notification Bash Script

This project focuses on developing a Bash script for monitoring system resources, including CPU usage, memory usage, and disk space, and implementing a notification mechanism to alert the system administrator when resource thresholds are exceeded. Additionally, logging functionality has been included to keep a record of system resource usage and notifications sent for troubleshooting and analysis purposes.

## Research

Extensive research has been conducted to identify appropriate command-line tools in Linux for retrieving system information accurately. Commands such as `top`, `free`, `df`, and other relevant tools were explored to gather CPU usage, memory usage, disk space, and other system resource metrics.

## Script Implementation

Based on the research findings, a Bash script has been developed to monitor system resources. The script periodically collects system resource information using the identified command-line tools and compares the current resource usage against predefined thresholds. The thresholds were defined based on the system's typical usage patterns and performance requirements. When resource thresholds are exceeded, the script takes appropriate actions, such as sending email notifications to the system administrator.

## Notification Mechanism

The script implements a notification mechanism to alert the system administrator when resource thresholds are exceeded. Various notification methods were explored, including email notifications, desktop notifications, or any other method deemed appropriate. Research was conducted on how to send notifications from a Bash script using available tools and libraries.

## Logging

Logging functionality has been incorporated into the script to keep a record of system resource usage and notifications sent. This logging mechanism helps in troubleshooting issues, analyzing system performance over time, and ensuring accountability. Best practices for logging in Bash scripts were researched, and logging functionality was implemented effectively.

By following these steps, the developed Bash script provides a comprehensive solution for monitoring system resources, implementing notification mechanisms, and logging relevant information for system administrators to ensure the smooth operation and performance of the system.

