#!/bin/bash

(echo "CPU:" && cat /proc/cpuinfo | grep "model name" | head -1 && echo "NUMERO CORE:" && grep -c processor /proc/cpuinfo && echo "RAM:" && free -h | grep Mem | awk '{print $2}' && echo "ARCHIVIO:" && df -h / | tail -1 | awk '{print $2}') >> hwinfo.info
