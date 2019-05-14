#!/bin/bash

# if the depth is non-zero , continue processing
[ "$1" -ne 0 ] && exit 0

cd /etc/openvpn/cookbook
ocsp_url="http://ocsp.example.com:4444"
if [ -n "${tls_serial_0}" ]
then
  status=$(openssl ocsp -issuer ca.crt -CAfile ca.crt \
                  -url "$ocsp_url" \
                  -serial "0x${tls_serial_0}" 2>/dev/null)

  if [ $? -eq 0 ]
  then
    # debug:
    echo "OCSP status: $status"
    if echo "$status" | grep -Fq "0x${tls_serial_0}: good"
    then
      exit 0
    fi
  else
    # debug:
    echo "openssl ocsp command failed!"
  fi
fi
exit 1
