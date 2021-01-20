#!/bin/bash
if grep "autoindex on;" /etc/nginx/sites-enabled/localhost > /dev/null; then
  echo "autoindex is on, turning it off"
  sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/localhost
  sed -i 's/root \/var\/www\//root \/var\/www\/localhost\//' /etc/nginx/sites-available/localhost
else
  echo "autoindex is off, turning it on"
  sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/localhost
  sed -i 's/root \/var\/www\/localhost\//root \/var\/www\//' /etc/nginx/sites-available/localhost
fi
nginx -s reload
