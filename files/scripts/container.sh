#!/usr/bin/env bash
set -oue pipefail

# ollama container
podman pull ollama/ollama &&
podman run -d -v ollama:/root/.ollama -p 11434:11434 --restart always --name ollama ollama/ollama &&
podman exec -it ollama ollama pull llama3.2 &&

# open-webui
podman run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --restart always --name open-webui ghcr.io/open-webui/open-webui:main
