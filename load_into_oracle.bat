@echo on
SET USER_PASS=
SET SCHEMA=
SET LOADJAVA_OPTS=-t -v -u %USER_PASS% 

@echo on
call loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\dependency\commons-logging*.jar

@echo on
call loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\dependency\amqp-client*.jar

@echo on
call loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\classes\com\zenika\oracle\amqp\*.class
