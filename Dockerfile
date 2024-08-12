FROM container-registry.oracle.com/database/free:latest

ENV APEX_USER="admin"
ENV APEX_PASSWORD="OracleDB2024!"
ENV APEX_EMAIL="admin@example.com"

EXPOSE 5500 8080 8443 22

COPY unattended_apex_install_23c.sh /home/oracle/
COPY 00_start_apex_ords_installer.sh /opt/oracle/scripts/startup