#!/bin/bash

source scripts/do/envs.sh

if [ $# -eq 0 ]; then
    echo "Usage: provide env: -s(staging) or -p(production)"
    exit 1
fi

if [ "$1" == "-p" ]; then
    
    echo "======================="
    echo "=======PRODUCTION======"
    echo "======================="

    doctl apps list-deployments "$PRODUCTION_APP_ID" "$PRODUCTION_WEB_NAME" --format Created,Updated,Cause,Phase | head -5
elif [ "$1" == "-s" ]; then
    echo "======================="
    echo "=========STAGING======="
    echo "======================="

    doctl apps list-deployments "$STAGING_APP_ID" "$STAGING_WEB_NAME" --format Created,Updated,Cause,Phase | head -5
else
    echo "Invalid argument. Usage: -s (staging) or -p (production)"
    exit 1
fi



