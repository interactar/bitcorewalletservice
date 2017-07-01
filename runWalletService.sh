#!/bin/bash
cd /bws
pwd
npm stop
npm start
tail -f /bws/logs/bws.log
