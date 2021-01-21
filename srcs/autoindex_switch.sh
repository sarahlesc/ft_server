#!/bin/bash
if grep "autoindex on;" /etc/nginx/sites-enabled/nginx-config > /dev/null; then
  echo "autoindex is on, turning it off"
  sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/nginx-config
  sed -i 's/root \/var\/www\//root \/var\/www\/nginx-config\//' /etc/nginx/sites-available/nginx-config
else
  echo "autoindex is off, turning it on"
  sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/nginx-config
  sed -i 's/root \/var\/www\/nginx-config\//root \/var\/www\//' /etc/nginx/sites-available/nginx-config
fi
nginx -s reload
