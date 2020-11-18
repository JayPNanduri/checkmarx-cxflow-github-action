#Use CxFlow Base image
FROM checkmarx/cx-flow
#Apply any updates
RUN apk update && apk upgrade
#Copy the entrypoint script and proerties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY application_sca.yml /app/application_sca.yml
COPY application_sast.yml /app/application_sast.yml
#Make it executable
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]