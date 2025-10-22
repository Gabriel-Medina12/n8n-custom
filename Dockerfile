FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg, Python y gTTS
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    && pip3 install --break-system-packages gTTS

USER node

EXPOSE 5678
