#!/bin/bash

# === Script pédagogique : Déploiement d'une application ===
# Ce script montre les étapes nécessaires pour déployer une application
# dans un environnement staging ou production.

# Étape 1 : Vérification des paramètres
echo "Étape 1 : Vérification des paramètres..."
echo "  - Vérifier que l'utilisateur a spécifié l'environnement de déploiement (staging ou production)."
echo "  - Exemple : ./deploy.sh staging"

# Étape 2 : Construction de l'application
echo "Étape 2 : Construction de l'application avec Maven..."
echo "  - Commande à utiliser : mvn clean package -DskipTests"
echo "  - Cette commande génère un fichier exécutable (ex. : un fichier JAR)."

# Étape 3 : Préparation du répertoire de déploiement
echo "Étape 3 : Préparation du répertoire de déploiement..."
echo "  - Créer un dossier dédié sur le serveur (ex. : /var/www/calculator/staging)."
echo "  - Supprimer les anciens fichiers pour s'assurer qu'il n'y a pas de conflit."

# Étape 4 : Déploiement de l'application
echo "Étape 4 : Déploiement de l'application..."
echo "  - Copier le fichier généré par Maven (ex. : calculator-0.0.1-SNAPSHOT.jar) dans le répertoire de déploiement."
echo "  - Commande à utiliser : cp target/*.jar /var/www/calculator/staging"

# Étape 5 : Configuration du service
echo "Étape 5 : Configuration du service..."
echo "  - Créer ou mettre à jour un service systemd (ex. : calculator-staging.service)."
echo "  - Ce service permet de démarrer automatiquement l'application après le déploiement."

# Étape 6 : Démarrage du service
echo "Étape 6 : Démarrage ou redémarrage du service..."
echo "  - Commande à utiliser : systemctl restart calculator-staging.service"
echo "  - Vérifier que le service est actif avec : systemctl status calculator-staging.service"

# Étape 7 : Vérification du déploiement
echo "Étape 7 : Vérification du déploiement..."
echo "  - Tester si l'application répond correctement."
echo "  - Exemple : Accéder à l'URL de staging via un navigateur ou un outil comme curl."
echo "  - Commande curl : curl http://staging.example.com/health"

echo "🚀 Fin du script pédagogique. Vous êtes prêt à déployer votre application !"
