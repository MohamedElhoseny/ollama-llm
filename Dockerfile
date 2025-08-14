FROM ollama/ollama:latest

# Expose the Ollama default API port
EXPOSE 11434

# Set the working directory
WORKDIR /root

# Start the Ollama server
CMD ["ollama", "serve"]
