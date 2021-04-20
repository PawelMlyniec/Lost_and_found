call kill-backend.bat

xcopy /S /Y lost-report-service\src\main\proto\* notification-service\src\main\proto\*
xcopy /S /Y text-message-service\src\main\proto\* notification-service\src\main\proto\*

cd lost-report-service
call gradlew dockerBuild
cd ..

cd notification-service
call gradlew dockerBuild
cd ..

cd text-message-service
call gradlew dockerBuild
cd ..

call docker-compose -f confluent-platform.yml -f database.yml -f microservices.yml up