# How to run

```bash
git https://github.com/Zylquinal/pretius-23cfree-unattended-apex-installer
docker build -t oracle .
docker run -it --name oracle-db -p 5500:5500 -p 8080:8080 -p 8443:8443 -p 22:22 -e ORACLE_PWD=oracle oracle
```
After running, wait until the installation is complete. You could wait until `### APEX INSTALLED ###` is shown in the logs.

# Credentials

You can change the credentials by specifying it when running the docker container:

```bash
docker run -it --name oracle-db -p 5500:5500 -p 8080:8080 -p 8443:8443 -p 22:22 -e ORACLE_PWD=oracle -e APEX_USER=admin -e APEX_PASSWORD=OracleDB2024! -e APEX_EMAIL=admin@localhost oracle
```

```Dockerfile
ENV APEX_USER="admin"
ENV APEX_PASSWORD="OracleDB2024!"
ENV APEX_EMAIL="admin@localhost"
```

# How to connect

- **Database**: `localhost:5500`
- **ORDS**: http://localhost:8080/ords
- **APEX**: http://localhost:8080/ords/apex
- **SSH**: `localhost:22`