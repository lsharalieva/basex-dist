@setlocal
@echo off

REM Path to this script
set PWD=%~dp0

REM Paths to distributed files or source directories
set BASEX=%PWD%/../BaseX.jar

REM Options for virtual machine
set VM=-Xmx1g

REM Classpath
set LIB=%PWD%/../lib
set CP=%BASEX%;%LIB%/lucene-analyzers-3.0.2.jar;%LIB%/tagsoup-1.2.jar;%LIB%/snowball.jar

REM Run BaseX
java -cp "%CP%;." %VM% org.basex.BaseX %*

@endlocal
