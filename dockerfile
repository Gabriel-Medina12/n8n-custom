FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg y Python para edge-tts
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    && pip3 install --break-system-packages edge-tts

USER node

# Exponer puerto
EXPOSE 5678
```

**`.dockerignore`:**
```
.git
.gitignore
README.md
