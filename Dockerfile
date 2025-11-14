# Dockerfile
# Étape 1: Utiliser une image Python officielle comme base
FROM python:3.9-slim

# Étape 2: Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3: Copier les dépendances et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4: Copier le code de l'application dans le conteneur
COPY app.py .

# Étape 5: Exposer le port sur lequel l'application tourne
EXPOSE 80

# Étape 6: Commande pour lancer l'application
CMD ["python", "app.py"]