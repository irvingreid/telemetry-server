#!/bin/bash

# Install additional python modules used by addon_perf analysis
sudo pip install unicodecsv

# Replace the default telemetry-server install with our own
(cd $HOME; rm -rf telemetry-server; git clone https://github.com/irvingreid/telemetry-server.git)
(cd $HOME/telemetry-server; git checkout addon-nightly)

# Now run the actually processing job
time $HOME/telemetry-server/mapreduce/addon_perf/processAddonPerf.sh
