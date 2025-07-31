#!/bin/bash

# SSH 서버 시작
service ssh start

# 무한 루프 - 컨테이너 유지
tail -f /dev/null

