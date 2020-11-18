#!/bin/sh
java -jar /app/cx-flow.jar --spring.profiles.active=sast --project --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}
