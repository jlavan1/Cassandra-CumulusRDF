#!/bin/bash

SAVEDIR=$PWD
WORKDIR=$( cd $(dirname $0) ; pwd -P)
cd $WORKDIR

java -Dlog.dir=/home/jamail/rdf/cumulus/cumulusrdf/logs -cp ../cumulusrdf-standalone/target/cumulusrdf-standalone-1.1.0-SNAPSHOT.jar:../cumulusrdf-core/target/cumulusrdf-core-1.1.0-SNAPSHOT.jar:../cumulusrdf-framework/target/cumulusrdf-framework-1.1.0-SNAPSHOT.jar:../cumulusrdf-web-module/target/cumulusrdf-web-module-1.1.0-SNAPSHOT/WEB-INF/lib/* edu.kit.aifb.cumulus.cli.Cirrus query -q 'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://swat.cse.lehigh.edu/onto/univ-bench.owl#>
SELECT distinct *
WHERE
{ 
{ ?x a ub:UndergraduateStudent . ?y a ub:Department . ?x ub:memberOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:UndergraduateStudent . ?y a ub:Department . ?x ub:worksFor ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:UndergraduateStudent . ?y a ub:Department . ?x ub:headOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:ResearchAssistant . ?y a ub:Department . ?x ub:memberOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:ResearchAssistant . ?y a ub:Department . ?x ub:worksFor ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:ResearchAssistant . ?y a ub:Department . ?x ub:headOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:GraduateStudent . ?y a ub:Department . ?x ub:memberOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:GraduateStudent . ?y a ub:Department . ?x ub:worksFor ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
  union
 { ?x a ub:GraduateStudent . ?y a ub:Department . ?x ub:headOf ?y . ?y ub:subOrganizationOf <http://www.University0.edu> . ?x ub:emailAddress ?z }
}
'
cd $SAVEDIR
