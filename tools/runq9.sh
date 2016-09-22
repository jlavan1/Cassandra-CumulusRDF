#!/bin/bash

SAVEDIR=$PWD
WORKDIR=$( cd $(dirname $0) ; pwd -P)
cd $WORKDIR

java -Dlog.dir=/home/jamail/rdf/cumulus/cumulusrdf/logs -cp ../cumulusrdf-standalone/target/cumulusrdf-standalone-1.1.0-SNAPSHOT.jar:../cumulusrdf-core/target/cumulusrdf-core-1.1.0-SNAPSHOT.jar:../cumulusrdf-framework/target/cumulusrdf-framework-1.1.0-SNAPSHOT.jar:../cumulusrdf-web-module/target/cumulusrdf-web-module-1.1.0-SNAPSHOT/WEB-INF/lib/* edu.kit.aifb.cumulus.cli.Cirrus query -q 'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://swat.cse.lehigh.edu/onto/univ-bench.owl#>
SELECT distinct *
WHERE
{ 
  { ?x a ub:ResearchAssistant . ?y a ub:Lecturer . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:PostDoc . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:VisitingProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:AssistantProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:AssociateProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:FullProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union

  { ?x a ub:ResearchAssistant . ?y a ub:Lecturer . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:PostDoc . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:VisitingProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:AssistantProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:AssociateProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:ResearchAssistant . ?y a ub:FullProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:Lecturer . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:PostDoc . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:VisitingProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:AssistantProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:AssociateProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:FullProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union

  { ?x a ub:UndergraduateStudent . ?y a ub:Lecturer . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:PostDoc . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:VisitingProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:AssistantProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:AssociateProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:UndergraduateStudent . ?y a ub:FullProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:Lecturer . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:PostDoc . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:VisitingProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:AssistantProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:AssociateProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:FullProfessor . ?z a ub:Course . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:Lecturer . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:PostDoc . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:VisitingProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:AssistantProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:AssociateProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . } union
  { ?x a ub:GraduateStudent . ?y a ub:FullProfessor . ?z a ub:GraduateCourse . ?x ub:advisor ?y . ?x ub:takesCourse ?z . ?y ub:teacherOf ?z . }

}
'
cd $SAVEDIR
