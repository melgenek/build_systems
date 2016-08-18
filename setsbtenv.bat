@echo off
set SBT_HOME=%~dp0\tools\sbt
set PATH=%SBT_HOME%\bin;%PATH%
echo Setting sbt home to: %SBT_HOME%
sbt sbtVersion