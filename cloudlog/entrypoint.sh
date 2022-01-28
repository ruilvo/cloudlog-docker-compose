#!/bin/bash

DIR="/cloudlog"
# look for empty dir
if [ -d "$DIR" ]
then
	if [ "$(ls -A $DIR)" ]; then
        cd $DIR
        git pull
	else
        git clone https://github.com/magicbug/Cloudlog.git /cloudlog
	fi
else
	git clone https://github.com/magicbug/Cloudlog.git /cloudlog
fi


# Stop-gap, temporary solution
chmod -R 777 /cloudlog

echo "Keeping alive..."
exec tail -f /dev/null
