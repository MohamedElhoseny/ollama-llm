# Use the existing Ollama image
FROM ollama/ollama:latest

# Expose the default Ollama port
EXPOSE 11434

# Run the Ollama server
CMD ["ollama", "serve"]
