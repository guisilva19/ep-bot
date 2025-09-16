FROM devlikeapro/waha:latest

# Variáveis de ambiente específicas do WAHA
ENV WHATSAPP_DEFAULT_ENGINE=GOWS
ENV WHATSAPP_HOOK_EVENTS=message
ENV WHATSAPP_START_SESSION=default
ENV WHATSAPP_SWAGGER_ENABLED=true
ENV WHATSAPP_SWAGGER_USERNAME=admin
ENV WHATSAPP_SWAGGER_PASSWORD=admin

# Porta que o Railway vai usar
EXPOSE 3000

# Criar diretórios para persistência
RUN mkdir -p /app/.sessions /app/.media

# Healthcheck para verificar se o WAHA está funcionando
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:3000/api/sessions || exit 1

# Comando padrão
CMD ["npm", "run", "start:prod"]