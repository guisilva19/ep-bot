FROM devlikeapro/waha:latest

# Porta que o Railway vai usar
EXPOSE 3000

# Volumes para persistência
VOLUME ["/app/.sessions", "/app/.media"]

# Comando padrão
CMD ["npm", "run", "start:prod"]