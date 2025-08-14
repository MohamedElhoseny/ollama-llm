FROM ollama/ollama:latest

# Expose Ollama default API port
EXPOSE 11434

# Start the Ollama server and pull the model at runtime
ENTRYPOINT ["/bin/sh", "-c", "ollama serve & sleep 5 && ollama pull llama3 && wait"]
