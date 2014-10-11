#!/bin/bash
# Usage: run-fork <branch-name>
# Runs nightly add-on telemetry from Irving's github repo, checking out the named branch

export TELEMETRY_BRANCH=$1

# Install additional python modules used by addon_perf analysis
sudo pip install unicodecsv

# Replace the default telemetry-server install with our own
(cd $HOME; rm -rf telemetry-server; git clone https://github.com/irvingreid/telemetry-server.git)
(cd $HOME/telemetry-server; git checkout $TELEMETRY_BRANCH)

# Now run the actually processing job
$HOME/telemetry-server/mapreduce/addon_perf/processAddonPerf.sh
