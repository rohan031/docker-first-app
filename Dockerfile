FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install --omit=dev --production
RUN npm run build
CMD ["npm", "start"]