#!/bin/bash

/proxy http -t tcp -p 0.0.0.0:8881 --auth-url http://${URL_BALANCER}/test --auth-nouser