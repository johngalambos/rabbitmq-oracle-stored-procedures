@echo on
call mvn clean package

@echo on
call mvn dependency:copy-dependencies
