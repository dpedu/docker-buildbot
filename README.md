docker-buildbot
===============

Buildbot master/slave image

*Usage:*

* Build: `docker build -t buildbot .`
* Run a master: `docker run -d -P -e ROLE=master --name="bb-master" buildbot`
* Run a slave: `docker run -d -P -e ROLE=slave --link bb-master:buildmaster -e MADDR=buildmaster -e MPORT=9989 --hostname=slave1 -e PASS=slaveone --name="bb-slave1" buildbot`

`ROLE=both` is available as well: `docker run -d -P -e ROLE=both -e MPORT=9989 --hostname=slave1 -e PASS=slaveone --name=bb-slave1 buildbot`

*Extras:*

* Master data persistence: `-v /host/dir:/opt/buildbot`
* Check the branches for a buildbot 0.9x version. At time of writing 0.9x is horribly broken; ymmv.
