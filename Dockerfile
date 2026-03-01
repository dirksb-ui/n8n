FROM n8nio/n8n:latest

ENV N8N_PORT=10000
EXPOSE 10000

# n8n binary Pfad explizit finden und nutzen
RUN ln -sf /usr/local/lib/node_modules/n8n/bin/n8n /usr/local/bin/n8n || true

ENTRYPOINT ["tini", "--"]
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
