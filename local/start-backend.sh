cd lost-report-service
./gradlew dockerBuild
cd ..
docker-compose -f confluent-platform.yml -f database.yml -f microservices.yml up