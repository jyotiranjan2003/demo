@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\web\wordpress\hypersonic\scripts\ctl.bat (start /MIN /B E:\web\wordpress\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\web\wordpress\ingres\scripts\ctl.bat (start /MIN /B E:\web\wordpress\ingres\scripts\ctl.bat START)
if exist E:\web\wordpress\mysql\scripts\ctl.bat (start /MIN /B E:\web\wordpress\mysql\scripts\ctl.bat START)
if exist E:\web\wordpress\postgresql\scripts\ctl.bat (start /MIN /B E:\web\wordpress\postgresql\scripts\ctl.bat START)
if exist E:\web\wordpress\apache\scripts\ctl.bat (start /MIN /B E:\web\wordpress\apache\scripts\ctl.bat START)
if exist E:\web\wordpress\openoffice\scripts\ctl.bat (start /MIN /B E:\web\wordpress\openoffice\scripts\ctl.bat START)
if exist E:\web\wordpress\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\web\wordpress\apache-tomcat\scripts\ctl.bat START)
if exist E:\web\wordpress\resin\scripts\ctl.bat (start /MIN /B E:\web\wordpress\resin\scripts\ctl.bat START)
if exist E:\web\wordpress\jetty\scripts\ctl.bat (start /MIN /B E:\web\wordpress\jetty\scripts\ctl.bat START)
if exist E:\web\wordpress\subversion\scripts\ctl.bat (start /MIN /B E:\web\wordpress\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\web\wordpress\lucene\scripts\ctl.bat (start /MIN /B E:\web\wordpress\lucene\scripts\ctl.bat START)
if exist E:\web\wordpress\third_application\scripts\ctl.bat (start /MIN /B E:\web\wordpress\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\web\wordpress\third_application\scripts\ctl.bat (start /MIN /B E:\web\wordpress\third_application\scripts\ctl.bat STOP)
if exist E:\web\wordpress\lucene\scripts\ctl.bat (start /MIN /B E:\web\wordpress\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\web\wordpress\subversion\scripts\ctl.bat (start /MIN /B E:\web\wordpress\subversion\scripts\ctl.bat STOP)
if exist E:\web\wordpress\jetty\scripts\ctl.bat (start /MIN /B E:\web\wordpress\jetty\scripts\ctl.bat STOP)
if exist E:\web\wordpress\hypersonic\scripts\ctl.bat (start /MIN /B E:\web\wordpress\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\web\wordpress\resin\scripts\ctl.bat (start /MIN /B E:\web\wordpress\resin\scripts\ctl.bat STOP)
if exist E:\web\wordpress\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\web\wordpress\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\web\wordpress\openoffice\scripts\ctl.bat (start /MIN /B E:\web\wordpress\openoffice\scripts\ctl.bat STOP)
if exist E:\web\wordpress\apache\scripts\ctl.bat (start /MIN /B E:\web\wordpress\apache\scripts\ctl.bat STOP)
if exist E:\web\wordpress\ingres\scripts\ctl.bat (start /MIN /B E:\web\wordpress\ingres\scripts\ctl.bat STOP)
if exist E:\web\wordpress\mysql\scripts\ctl.bat (start /MIN /B E:\web\wordpress\mysql\scripts\ctl.bat STOP)
if exist E:\web\wordpress\postgresql\scripts\ctl.bat (start /MIN /B E:\web\wordpress\postgresql\scripts\ctl.bat STOP)

:end

