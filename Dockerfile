FROM n8nio/n8n:latest

USER root

# Installa solo la libreria core per controllare Browserless via WebSocket
RUN npm install -g playwright-core

# Abilita il modulo all'interno del nodo Code di n8n
ENV NODE_FUNCTION_ALLOW_EXTERNAL=playwright-core

USER node
