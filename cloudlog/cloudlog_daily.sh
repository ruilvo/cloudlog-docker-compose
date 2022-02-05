#! /bin/bash

cd /var/www/html
# Update the Cloudlog installation every day at midnight
/var/www/html/update_cloudlog.sh
# Restore the permissions as they were before
chown -R root:www-data /var/www/html
chmod -R g+rw /var/www/html
chmod +x /var/www/html/update_cloudlog.sh
rm -rf /var/www/html/install
cd $(dirname $0)

# Update LOTW Users Database
curl http://localhost/index.php/lotw/load_users

# Update Clublog SCP Database File
curl http://localhost/index.php/update/update_clublog_scp

# Update DOK File for autocomplete
curl http://localhost/index.php/update/update_dok

# Update SOTA File for autocomplete
curl http://localhost/index.php/update/update_sota
