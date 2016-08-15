#!/bin/bash
SCRIPT_NAME="setantenv.sh"

if [ "$0" == "./$SCRIPT_NAME" ]; then
echo "Please call as ". ./$SCRIPT_NAME" or "source ./$SCRIPT_NAME", not ./$SCRIPT_NAME !!!"
echo "Also please DO NOT make this file executable"

chmod -x ./$SCRIPT_NAME
exit
fi

PROJECT_HOME=`dirname $0`
export -p ANT_HOME="$PROJECT_HOME/tools/apache-ant-1.9.6"
chmod +x "$ANT_HOME/bin/ant"
export -p PATH=$ANT_HOME/bin:$PATH
echo "Setting ant home to: $ANT_HOME"
ant -version
