#! /bin/bash

# Update LOTW Users Database
curl http://localhost/index.php/lotw/load_users

# Update Clublog SCP Database File
curl http://localhost/index.php/update/update_clublog_scp

# Update DOK File for autocomplete
curl http://localhost/index.php/update/update_dok

# Update SOTA File for autocomplete
curl http://localhost/index.php/update/update_sota
