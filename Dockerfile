FROM node:20-alpine

WORKDIR /app

COPY ["package.json", "/app/package.json"]
COPY ["package-lock.json", "/app/package-lock.json"]

RUN npm ci

COPY ["canvas-api-request.js", "/app/canvas-api-request.js"]
COPY ["sync-emails.js", "/app/sync-emails.js"]

ENTRYPOINT ["node", "sync-emails.js"]
