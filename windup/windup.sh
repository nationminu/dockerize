#!/usr/bin/env bash
docker run -v "$PWD/webapp:/app/src" -v "$PWD/result:/app/result" -w /app -it windup:4 $@

# execute docker for windup
# windup.sh --input /app/src/simple-sample-app.ear --output /app/result --source weblogic --target eap:7 --packages com.acme


# simple app
# wget https://github.com/windup/windup-sample-apps/raw/simple-sample-weblogic-logmanager/sample-apps/simple-sample/prebuilt/simple-sample-app.ear
