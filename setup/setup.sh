#!/bin/bash
set -e
service mysql start
mysql < /usr/local/bin/setup.sql
service mysql stop