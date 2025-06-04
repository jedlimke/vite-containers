FROM node:24-bullseye-slim

WORKDIR /workspace

COPY package*.json ./

RUN npm install --include=dev

COPY . .

# Set permissions for the node user (optional, but good practice)
RUN chown -R node:node /workspace

USER node

EXPOSE 3000

CMD ["npm", "run", "dev"]