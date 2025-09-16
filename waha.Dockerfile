FROM devlikeapro/waha:latest

# Definir porta como variável de ambiente  
ENV PORT=3000
ENV WAHA_HTTP_PORT=3000
ENV HOST=0.0.0.0

# Porta que o Railway vai usar
EXPOSE 3000

# Volumes para persistência
VOLUME ["/app/.sessions", "/app/.media"]

# Comando padrão - usar o comando correto do WAHA  
CMD ["npm", "run", "start:prod"]