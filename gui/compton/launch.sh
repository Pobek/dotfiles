#!/bin/bash
# Basic script to kill all compton processes and start a new one

# Terminate already running bad instances
killall -q compton

# Wait until the processes have been shut down
while grep -x compton >/dev/null; do sleep 1; done

# Launch as daemon
compton -b --config ~/.config/compton/compton.conf

