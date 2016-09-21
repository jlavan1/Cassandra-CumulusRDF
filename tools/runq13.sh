#!/bin/bash

SAVEDIR=$PWD
WORKDIR=$( cd $(dirname $0) ; pwd -P)
cd $WORKDIR

java -Dlog.dir=/home/jamail/rdf/cumulus/cumulusrdf/logs -cp ../cumulusrdf-standalone/target/cumulusrdf-standalone-1.1.0-SNAPSHOT.jar:../cumulusrdf-core/target/cumulusrdf-core-1.1.0-SNAPSHOT.jar:../cumulusrdf-framework/target/cumulusrdf-framework-1.1.0-SNAPSHOT.jar:../cumulusrdf-web-module/target/cumulusrdf-web-module-1.1.0-SNAPSHOT/WEB-INF/lib/* edu.kit.aifb.cumulus.cli.Cirrus query -q 'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://swat.cse.lehigh.edu/onto/univ-bench.owl#>
SELECT *
WHERE
{ 

{ ?x a ub:AssociateProfessor . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:FullProfessor . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:AssistantProfessor . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:Lecturer . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:UndergraduateStudent . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:GraduateStudent . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:TeachingAssistant . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:ResearchAssistant . ?x ub:doctoralDegreeFrom <http://www.University0.edu> . }

union

{ ?x a ub:AssociateProfessor . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:FullProfessor . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:AssistantProfessor . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:Lecturer . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:UndergraduateStudent . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:GraduateStudent . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:TeachingAssistant . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:ResearchAssistant . ?x ub:mastersDegreeFrom <http://www.University0.edu> . }

union

{ ?x a ub:AssociateProfessor . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:FullProfessor . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:AssistantProfessor . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:Lecturer . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:UndergraduateStudent . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:GraduateStudent . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:TeachingAssistant . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }
union
{ ?x a ub:ResearchAssistant . ?x ub:undergraduateDegreeFrom <http://www.University0.edu> . }

}
'
cd $SAVEDIR
