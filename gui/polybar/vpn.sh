#!/bin/bash

exec 2>/dev/null

vpn_status=$(tailscale status --json --peers=false | jq .BackendState)
echo "[VPN] $vpn_status"
