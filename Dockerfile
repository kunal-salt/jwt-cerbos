FROM node:alpine
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 3000 3593 3592
RUN echo "Stage 1"


# FROM ghcr.io/cerbos/cerbos
# COPY ./cerbos/config /config
# COPY ./cerbos/policies /policies
# VOLUME ["/config", "/policies"]
# EXPOSE 3593
# WORKDIR /
# RUN echo "Stage 2"

# WORKDIR /usr/src/app


CMD ["npm", "start"] 