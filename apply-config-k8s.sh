kubectl apply -n kafka -f k8s/kafka/kafka.yaml
kubectl apply -n kafka -f k8s/kafka/kafka-topics.yaml
kubectl apply -n kafka -f k8s/kafka/schema-registry.yaml
kubectl apply -n mongo -f k8s/mongo/mongodb.yaml
kubectl apply -f k8s/lost-report-service.yaml
kubectl apply -f k8s/text-message-service.yaml
kubectl apply -f k8s/notification-service.yaml
kubectl apply -f k8s/ingress.yaml
kubectl apply -f k8s/frontend.yaml