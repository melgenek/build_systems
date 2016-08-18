# Multimodule java project build using Maven, Gradle, Ant and Sbt

jar == admin \

               |----> services ---> utils
               
war == web   /


## ANT:
1) Set path to ant

  WINDOWS: setantenv.bat

  LINUX: . ./setantenv.sh

2) Build project from root
With tests:

  ant build

Skip tests compilation and run:

  ant build -Dtest.skip=true
 
3) Directory "artifacts" contains war and jar

* To clean project use "ant clean"

* Use maven as a dependency resolver for ant:

  Build project from root

  ant build -Ddependency.resolver=maven

## MAVEN:
1) Set path to maven

  WINDOWS: setmavenenv.bat

  LINUX: . ./setmavenenv.sh

2) Build project from root

With tests:
  
  mvn package

Skip tests compilation and run:
  
  mvn package -Dmaven.test.skip=true
 
3) Directory "artifacts" contains war and jar

* To clean project use "mvn clean"

## GRADLE:
1) Build project from root

With tests:

  WINDOWS: gradlew build

  LINUX: ./gradlew build

Skip tests compilation and run:

  WINDOWS: gradlew build -x test

  LINUX: ./gradlew build -x test
 
3) Directory "artifacts" contains war and jar

* To clean project use "gradlew clean" (or "./gradlew clean" in LINUX)

## SBT:
1) Set path to sbt

  WINDOWS: setsbtenv.bat

2) Build project from root

  WINDOWS: sbt package

Run tests:

  WINDOWS: sbt test

3) Directory "artifacts" contains war and jar

* To clean project use "sbt clean"

