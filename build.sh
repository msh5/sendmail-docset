#!/bin/sh

LOCALE=C
set -e
set -u

SENDMAIL_VER=8.15.2
SENDMAIL_URL=http://artfiles.org/sendmail.org/pub/sendmail/sendmail.${SENDMAIL_VER}.tar.gz
DASHING_BIN=$GOPATH/bin/dashing

wget -c -O sendmail.$SENDMAIL_VER.tar.gz $SENDMAIL_URL 
tar zxf sendmail.$SENDMAIL_VER.tar.gz
$DASHING_BIN build \
    --source sendmail-$SENDMAIL_VER/libmilter/docs \
    --config dashing.json
