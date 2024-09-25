#!/usr/bin/env sh
while true; do
  { echo -e "HTTP/1.1 ${RESPONSE_CODE:-503}\r\n"; echo "$(less template.html)"; } | nc -lvp  "${PORT:-80}";
done
