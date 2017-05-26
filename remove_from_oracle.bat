@echo on
SET USER_PASS=
SET SCHEMA=
SET LOADJAVA_OPTS=-t -v -u %USER_PASS% 

REM removes Java from the oracle database
@echo on
call dropjava -u %USER_PASS% -schema %SCHEMA% target\dependency\commons-logging*.jar

@echo on
call dropjava -u %USER_PASS% -schema %SCHEMA%  target\dependency\amqp-client*.jar

@echo on
call dropjava -u %USER_PASS% -schema %SCHEMA%  target\classes\com\zenika\oracle\amqp\*.class
