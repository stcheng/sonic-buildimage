#!/usr/bin/env bash

rm -f /var/run/rsyslogd.pid
rm -f /var/run/teamd/*:x

supervisorctl start rsyslogd

supervisorctl start teammgrd

supervisorctl start teamsyncd
