FROM node:24-bullseye-slim

WORKDIR /workspace

COPY package*.json ./

RUN npm install --include=dev

COPY . .

USER node

EXPOSE 3000

CMD ["npm", "run", "dev"]