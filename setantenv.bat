@echo off
set ANT_HOME=%~dp0\tools\apache-ant-1.9.6
set PATH=%ANT_HOME%\bin;%PATH%
echo Setting ant home to: %ANT_HOME%
ant -version