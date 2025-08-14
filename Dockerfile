FROM ollama/ollama:latest

# Listen on all interfaces inside the container
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_PORT=11434

# Persist models (Dekploy will mount a host path here)
VOLUME ["/root/.ollama"]

# Expose Ollama HTTP API
EXPOSE 11434

# Healthcheck so Dekploy/Traefik know when it's ready
HEALTHCHECK --interval=20s --timeout=5s --start-period=30s --retries=10 \
  CMD wget -qO- http://127.0.0.1:11434/api/tags || exit 1

# Start Ollama server (foreground)
CMD ["ollama", "serve"]
