#!/bin/bash
USAGE=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')
if [ "$USAGE" -gt 80 ]; then
  echo "WARNING: Disk usage is high: $USAGE%"
else
  echo "Disk usage OK: $USAGE%"
fi

