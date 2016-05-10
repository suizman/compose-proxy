#!/bin/bash

# Start Nginx
service nginx start

# Generate config

# Follow log..
tail -f /var/log/nginx/access.log
