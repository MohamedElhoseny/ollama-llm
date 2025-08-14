# Use official Ollama image
FROM ollama/ollama:latest

# Expose default Ollama port
EXPOSE 11434

# Default command to start Ollama server
CMD ["serve"]
