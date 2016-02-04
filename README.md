Run master:

docker run -d -P -e ROLE=master -v /Users/dave/Documents/Code/docker-buildbot/combined/test/master.cfg:/opt/buildbot/master.cfg -v /Users/dave/Documents/Code/docker-buildbot/combined/test/state.sqlite:/opt/buildbot/state.sqlite --name="bb-master" buildbot

Run slave:

docker run -d -P -e ROLE=slave -e MADDR=172.17.0.2 -e MPORT=9989 --hostname=slave1 -e PASS=slaveone --name=bb-slave1 buildbot

Run combined:

docker run -d -P -e ROLE=both -e MPORT=9989 --hostname=slave1 -e PASS=slaveone --name=bb-slave1 buildbot

