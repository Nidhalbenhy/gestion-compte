# Étape 1 : Utiliser une image de base Java
FROM openjdk:17-jdk-slim

# Étape 2 : Ajouter le fichier JAR de votre application dans le conteneur
COPY target/gestion-compte-0.0.1-SNAPSHOT.jar /app/gestion-compte-0.0.1-SNAPSHOT.jar

# Étape 3 : Exposer le port 8080 pour accéder à l'application
EXPOSE 8080

# Étape 4 : Définir la commande pour démarrer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/app/gestion-compte-0.0.1-SNAPSHOT.jar"]