SET USER_PASS=
SET SCHEMA=
SET LOADJAVA_OPTS=-t -v -u %USER_PASS% 

REM mvn clean package
REM mvn dependency:copy-dependencies

REM load dependencies
loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\dependency\commons-logging*.jar
loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\dependency\amqp-client*.jar

REM load the actual Java procedures
loadjava %LOADJAVA_OPTS% -resolve -resolver "((* %SCHEMA%) (* PUBLIC) (* -))" target\classes\com\zenika\oracle\amqp\*.class


REM dropjava -u %USER_PASS% -schema %SCHEMA% target\dependency\commons-logging*.jar
REM dropjava -u %USER_PASS% -schema %SCHEMA%  target\dependency\amqp-client*.jar
REM dropjava -u %USER_PASS% -schema %SCHEMA%  target\classes\com\zenika\oracle\amqp\*.class
