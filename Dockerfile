FROM ubuntu:trusty

ADD start /start

RUN apt-get update && \
    apt-get install -y git curl buildbot buildbot-slave supervisor && \
    chmod +x /start && \
    mkdir /etc/supervisor/disabled

ADD supervisor-buildbot-master.conf /etc/supervisor/disabled/supervisor-buildbot-master.conf
ADD supervisor-buildbot-slave.conf /etc/supervisor/disabled/supervisor-buildbot-slave.conf

ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf

#EXPOSE ["22", "8080", "9989"]
EXPOSE 22
EXPOSE 8080
EXPOSE 9989
#VOLUME /opt/buildbot/
ENTRYPOINT ["/start"]
