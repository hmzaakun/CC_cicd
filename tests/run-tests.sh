#!/bin/bash

# Test d'un endpoint API
TEST_URL="http://localhost:3000"

# Effectuer une requête HTTP et stocker la réponse
response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$TEST_URL")

# Vérifier si le code de réponse HTTP est 200 (OK)
if [ "$response" -ne 200 ]; then
    echo "Test échoué : Réponse inattendue de l'API"
    exit 1
else
    echo "Test réussi : Réponse attendue reçue"
fi
