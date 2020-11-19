FROM ubuntu:20.04

RUN apt update && apt install -y mysql-client

COPY script.sh /opt/

CMD /opt/script.sh
