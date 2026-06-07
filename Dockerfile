FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install base backend dependencies
COPY backend/requirements.txt /app/requirements-base.txt
RUN pip install --no-cache-dir -r /app/requirements-base.txt || true

RUN git config --global user.name "AI SDLC" && \
    git config --global user.email "ai@sdlc.local"

EXPOSE 8080

CMD ["bash"]
