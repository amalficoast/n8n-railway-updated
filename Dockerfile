FROM n8nio/n8n:latest

USER root

puppeteer-core
RUN npm install -g puppeteer-core

USER node
