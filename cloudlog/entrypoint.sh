#!/bin/bash

if cd /cloudlog; then git pull; else git clone https://github.com/magicbug/Cloudlog.git /cloudlog; fi

# Stop-gap, temporary solution
chmod -R 777 /cloudlog

echo "Keeping alive..."
exec tail -f /dev/null
