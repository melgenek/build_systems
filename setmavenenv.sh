#!/bin/bash
SCRIPT_NAME="setmavenenv.sh"

if [ "$0" == "./$SCRIPT_NAME" ]; then
echo "Please call as ". ./$SCRIPT_NAME" or "source ./$SCRIPT_NAME", not ./$SCRIPT_NAME !!!"
echo "Also please DO NOT make this file executable"

chmod -x ./$SCRIPT_NAME
exit
fi

PROJECT_HOME=`pwd`
export -p MAVEN_HOME="$PROJECT_HOME/tools/apache-maven-3.3.3"
chmod +x "$MAVEN_HOME/bin/mvn"
export -p PATH=$MAVEN_HOME/bin:$PATH
echo "Setting maven home to: $MAVEN_HOME"
mvn -version
