#!/bin/sh
socat -u UNIX-LISTEN:/dev/log,fork STDOUT |
  stdbuf -o0 tr '\n<' '<\n'  |
  stdbuf -o0 paste -sd\\n - -|
  sed  -e'/^[0-9]\{1,\}>/!{$!H;1h;$!d'\
     -e\} -e'x;y/\n</<\n/;s//<&/'   \
     -ew\ /dev/fd/1  &
