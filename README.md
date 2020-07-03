# l-was

Deploy custom WAS liberty app image on Openshift

# User Group
user: 1001
group: 0

# Port 
9080, 9443

# Keystore 
/config/configDropins/defaults/keystore.xml

# Dockerfile
FROM websphere-liberty:kernel

COPY --chown=1001:0  Sample1.war /config/dropins/

COPY --chown=1001:0  server.xml /config/

RUN configure.sh
