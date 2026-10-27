#!/bin/bash
# Start Docker daemon on this VM (manual, not systemd).
# The VM kernel cannot create the default docker bridge network, so the
# daemon is started with --bridge=none. Per-Dot computers therefore still
# need a live test: the supervisor's container creation may require a
# bridge network that this VM cannot provide. If that test fails, run
# OpenDots computers on a machine with Docker Desktop / a full kernel.
# Re-run this script after a VM replacement if dockerd is not running.
if docker info >/dev/null 2>&1; then
  echo "Docker daemon already running."
  exit 0
fi
nohup dockerd --bridge=none --iptables=false --ip-masq=false > /tmp/dockerd.log 2>&1 &
sleep 8
docker info | grep -E "Server Version|Storage Driver" || echo "dockerd did not come up; see /tmp/dockerd.log"
