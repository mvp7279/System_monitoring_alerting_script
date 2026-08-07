#!/bin/bash

# ========================================
# System Monitoring and Alerting Script
# ========================================

echo "========================================"
echo "      SYSTEM MONITORING SCRIPT"
echo "========================================"

##########################################
# Disk Usage Monitoring
##########################################

echo ""
echo "Disk Usage"
echo "----------"

df -h /

disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo ""
echo "Current Disk Usage: ${disk_usage}%"

if [ "$disk_usage" -gt 80 ]; then
    echo "⚠️ WARNING: Disk usage is above 80%!"
    echo "$(date '+%Y-%m-%d %H:%M:%S') WARNING: Disk usage is ${disk_usage}%" >> alerts.log
else
    echo "✅ Disk usage is normal."
fi

##########################################
# Memory Usage Monitoring
##########################################

echo ""
echo "Memory Usage"
echo "------------"

memory_usage=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Current Memory Usage: ${memory_usage}%"

if [ "$memory_usage" -gt 80 ]; then
    echo "⚠️ WARNING: Memory usage is above 80%!"
    echo "$(date '+%Y-%m-%d %H:%M:%S') WARNING: Memory usage is ${memory_usage}%" >> alerts.log
else
    echo "✅ Memory usage is normal."
fi

##########################################
# Top CPU Processes
##########################################

echo ""
echo "Top 5 CPU Consuming Processes"
echo "-----------------------------"

ps aux --sort=-%cpu | head -6

##########################################
# Top Memory Processes
##########################################

echo ""
echo "Top 5 Memory Consuming Processes"
echo "--------------------------------"

ps aux --sort=-%mem | head -6

echo ""
echo "========================================"
echo "      SYSTEM CHECK COMPLETED"
echo "========================================"========================================
