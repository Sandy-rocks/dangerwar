@echo off

pushd ..

del /Q target\etlunit-lib\*

call mvn package -Dmaven.test.skip -U

del target\cli.flag

popd