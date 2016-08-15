@echo off
set MAVEN_HOME=%~dp0\tools\apache-maven-3.3.3
set PATH=%MAVEN_HOME%\bin;%PATH%
echo Setting maven home to: %MAVEN_HOME%
mvn -version