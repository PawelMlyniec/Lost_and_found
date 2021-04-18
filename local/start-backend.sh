cp -r lost-report-service/src/main/proto/* notification-service/src/main/proto
cp -r text-message-service/src/main/proto/* notification-service/src/main/proto

cd lost-report-service
./gradlew dockerBuild
cd ..

cd notification-service
./gradlew dockerBuild
cd ..

cd text-message-service
./gradlew dockerBuild
cd ..

docker-compose -f confluent-platform.yml -f database.yml -f microservices.yml up