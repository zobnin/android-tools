#!/bin/sh

adb forward tcp:8080 tcp:8080
export http_proxy=localhost:8080
chromium

