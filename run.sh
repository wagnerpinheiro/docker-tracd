#!/bin/bash
trac-admin /trac upgrade
trac-admin /trac wiki upgrade

tracd -p 8080 --basic-auth="*,/trac/.htpasswd,TRAC" /trac

# @to-do pass args as parameter
# echo "running: tracd -p 8080 $TRACD_ARGS /trac"
# tracd -p 8080 $TRACD_ARGS /trac
