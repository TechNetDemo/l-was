FROM ibmcom/websphere-liberty:latest
COPY sample.war /config/dropins/
#RUN sudo chown -R 1001:0 /config/dropins/
