# Multimodule java project build using Maven, Gradle, Ant and Sbt

jar == admin \
               
               |----> services ---> utils
               
war == web   /

For all build systems the directory "artifacts" contains war and jar

## ANT:
* Set path to ant

  WINDOWS: setantenv.bat

  LINUX: . ./setantenv.sh

* Build project from root with tests:

  ant build

* Skip tests compilation and build:

  ant build -Dtest.skip=true
 
* To clean project use "ant clean"

* Use maven as a dependency resolver for ant:

  Build project from root

  ant build -Ddependency.resolver=maven

## MAVEN:
* Set path to maven

  WINDOWS: setmavenenv.bat

  LINUX: . ./setmavenenv.sh

* Build project from root with tests:
  
  mvn package

* Skip tests compilation and build:
  
  mvn package -Dmaven.test.skip=true
 
* To clean project use "mvn clean"

## GRADLE:
* Build project from root with tests:

  WINDOWS: gradlew build

  LINUX: ./gradlew build

* Skip tests compilation and build:

  WINDOWS: gradlew build -x test

  LINUX: ./gradlew build -x test
 
* To clean project use "gradlew clean" (or "./gradlew clean" in LINUX)

## SBT:
* Set path to sbt

  WINDOWS: setsbtenv.bat

* Build project from root

  WINDOWS: sbt package

* Run tests:

  WINDOWS: sbt test

* To clean project use "sbt clean"

