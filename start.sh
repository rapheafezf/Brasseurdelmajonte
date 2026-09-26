#!/usr/bin/env bash
PORT=3000
echo "🚀 Déploiement en local du site Les Brasseurs de la Jonte..."

# Vérifie si le port est déjà actif
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null ; then
    echo "✅ Le serveur local tourne déjà sur le port $PORT"
else
    echo "⚡ Démarrage du serveur sur http://localhost:$PORT..."
    python3 -m http.server $PORT &
    sleep 1
fi

echo "🌐 Ouverture dans votre navigateur : http://localhost:$PORT"
open "http://localhost:$PORT"
