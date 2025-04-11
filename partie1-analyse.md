# Analyse du projet Spring Petclinic

## Microservices identifiés

1. **spring-petclinic-api-gateway**
   - **Dépendances** : Spring Cloud Gateway, autres services (clients, vétérinaires, visites).
   - **Port d'écoute** : 8080 (par défaut dans Spring Boot).
   - **Variables d'environnement** :
     - `SERVER_PORT` : Port d'écoute du service.
   - **Interactions** :
     - Route les requêtes vers les services clients, vétérinaires et visites.

2. **spring-petclinic-customers-service**
   - **Dépendances** : Base de données (MySQL ou HSQLDB), Spring Data JPA.
   - **Port d'écoute** : 8081 (par défaut dans Spring Boot).
   - **Variables d'environnement** :
     - `SPRING_DATASOURCE_URL` : URL de la base de données.
     - `SPRING_DATASOURCE_USERNAME` : Nom d'utilisateur pour la base de données.
     - `SPRING_DATASOURCE_PASSWORD` : Mot de passe pour la base de données.
   - **Interactions** :
     - Fournit des données sur les clients aux autres services.

3. **spring-petclinic-vets-service**
   - **Dépendances** : Base de données (MySQL ou HSQLDB), Spring Data JPA.
   - **Port d'écoute** : 8082 (par défaut dans Spring Boot).
   - **Variables d'environnement** :
     - `SPRING_DATASOURCE_URL` : URL de la base de données.
     - `SPRING_DATASOURCE_USERNAME` : Nom d'utilisateur pour la base de données.
     - `SPRING_DATASOURCE_PASSWORD` : Mot de passe pour la base de données.
   - **Interactions** :
     - Fournit des données sur les vétérinaires aux autres services.

4. **spring-petclinic-visits-service**
   - **Dépendances** : Base de données (MySQL ou HSQLDB), Spring Data JPA.
   - **Port d'écoute** : 8083 (par défaut dans Spring Boot).
   - **Variables d'environnement** :
     - `SPRING_DATASOURCE_URL` : URL de la base de données.
     - `SPRING_DATASOURCE_USERNAME` : Nom d'utilisateur pour la base de données.
     - `SPRING_DATASOURCE_PASSWORD` : Mot de passe pour la base de données.
   - **Interactions** :
     - Fournit des données sur les visites aux autres services.

## Résumé des interactions
- **API Gateway** : Point d'entrée unique pour les clients.
- **Services métiers** :
  - `customers-service` : Gestion des clients.
  - `vets-service` : Gestion des vétérinaires.
  - `visits-service` : Gestion des visites.

Chaque service communique via des appels HTTP REST et dépend d'une base de données pour stocker ses données spécifiques.