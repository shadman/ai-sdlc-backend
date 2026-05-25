FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Placeholder: requirements will come from mounted volume
RUN echo "# Backend will install its own dependencies at runtime"

RUN git config --global user.name "AI SDLC" && \
    git config --global user.email "ai@sdlc.local"

EXPOSE 8080

CMD ["bash"]
