#! /bin/bash

# Upload QSOs to LoTW if certs have been provided every hour.
curl http://localhost/index.php/lotw/lotw_upload

# Upload QSOs to QRZ Logbook
curl http://localhost/index.php/qrz/upload
