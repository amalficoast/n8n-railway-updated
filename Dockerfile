FROM n8nio/n8n:latest

USER root

# Installa playwright-core globalmente
RUN npm install -g playwright-core

# Crea la cartella dei dati del volume e la sottocartella n8n,
# poi assegna i permessi utente corretti prima del montaggio di Railway
RUN mkdir -p /data/.n8n && chown -R node:node /data

# Abilita il modulo nel nodo Code
ENV NODE_FUNCTION_ALLOW_EXTERNAL=playwright-core

USER node
