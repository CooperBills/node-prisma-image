FROM --platform=amd64 node:16-alpine3.15

ENV PRISMA_ENGINES_VERSION=3.12.0-23.4c9d4edf238ad9c4a706eb5b7201ee0b4ebee93e

RUN mkdir temppkg \
    && cd temppkg \
    && npm init -y \
    && npm install @prisma/engines@${PRISMA_ENGINES_VERSION} \
    && cp node_modules/@prisma/engines/*musl* / \
    && cd / \
    && rm -rf temppkg
