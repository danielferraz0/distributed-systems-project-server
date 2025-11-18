FROM debian:stable-slim

WORKDIR /app

COPY server.x86_64 .

RUN chmod +x server.x86_64

CMD ["./server.x86_64"]