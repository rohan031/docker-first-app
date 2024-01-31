FROM node:lts-alpine
WORKDIR /app
COPY . .

ENV NEXT_PUBLIC_NAME="Saini bhaii"
RUN npm install --omit=dev
RUN npm run build
CMD ["npm", "start"]
