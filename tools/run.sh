#!/bin/bash

SAVEDIR=$PWD
WORKDIR=$( cd $(dirname $0) ; pwd -P)
cd $WORKDIR

java -Dlog.dir=/home/jamail/rdf/cumulus/cumulusrdf/logs -cp ../cumulusrdf-standalone/target/cumulusrdf-standalone-1.1.0-SNAPSHOT.jar:../cumulusrdf-core/target/cumulusrdf-core-1.1.0-SNAPSHOT.jar:../cumulusrdf-framework/target/cumulusrdf-framework-1.1.0-SNAPSHOT.jar:../cumulusrdf-web-module/target/cumulusrdf-web-module-1.1.0-SNAPSHOT/WEB-INF/lib/* edu.kit.aifb.cumulus.cli.Cirrus $1 $2 $3 $4 $5 $6 $7 $8


cd $SAVEDIR
