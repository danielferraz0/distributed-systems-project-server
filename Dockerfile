FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
    libx11-6 \
    libxcursor1 \
    libxinerama1 \
    libxrandr2 \
    libxi6 \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY server.x86_64 .

RUN chmod +x server.x86_64

CMD ["/app/server.x86_64", "--headless"]