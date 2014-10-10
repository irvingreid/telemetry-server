#!/bin/bash

# Install additional python modules used by addon_perf analysis
sudo pip install unicodecsv

# Run script is unpacked in /mnt/telemetry, code is in home directory.
(cd $HOME/telemetry-server; git pull)

# Now run the actually processing job
$HOME/telemetry-server/mapreduce/addon_perf/processAddonPerf.sh
