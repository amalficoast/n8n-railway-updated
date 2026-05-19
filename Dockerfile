FROM n8nio/n8n:latest

USER root

# Installa solo la libreria di controllo, senza scaricare i browser pesanti
RUN npm install -g playwright-core

# Abilita l'uso del modulo nel nodo Code
ENV NODE_FUNCTION_ALLOW_EXTERNAL=playwright-core

USER node
