@echo off

pushd ..

IF EXIST target\cli.flag GOTO RUNCLI

mkdir lib 2> NUL

del /Q lib\*

copy /Y target\etlunit-lib\* lib > NUL

echo UPDATED > target\cli.flag

:RUNCLI

java -Djava.ext.dirs=lib org.bitbucket.bradleysmithllc.etlunit.cli.CliMain

popd