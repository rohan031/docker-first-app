FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install --omit=dev
RUN npm run build
CMD ["npm", "start"]
