#!/usr/bin/env sh

cat << EOF >/etc/config.json
{
  "inbounds":[
    {
      "port": ${PORT:=3000},
      "protocol": "${PROTOCOL:=$(echo dm1lc3MK | base64 -d)}",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "${UUID:=b4377531-96de-40ab-8446-beccacf5b65a}"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF

$(echo L3YycmF5IC1jb25maWcgL2V0Yy9jb25maWcuanNvbgo= | base64 -d) >/dev/null 2>&1
