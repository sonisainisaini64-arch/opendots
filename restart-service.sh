#!/bin/bash
set -e
cp /home/hatch/workspace/opendots/opendots.service /etc/systemd/system/opendots.service
systemctl daemon-reload
systemctl enable opendots.service
systemctl restart opendots.service
systemctl status opendots.service --no-pager | head -20
curl -s -o /dev/null -w "HTTP:%{http_code}\n" http://127.0.0.1:4310/
