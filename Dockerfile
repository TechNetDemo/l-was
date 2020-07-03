FROM ibmcom/websphere-liberty:latest

COPY --chown=1001:0 demo.ear /config/dropins/
