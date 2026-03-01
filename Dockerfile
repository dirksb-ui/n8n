FROM n8nio/n8n:latest
ENV N8N_PORT=10000
EXPOSE 10000
CMD ["n8n", "start"]
