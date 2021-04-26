rd /s /q "notification-service/src/main/proto"
docker-compose -f confluent-platform.yml -f database.yml -f microservices.yml down