FROM node:lts-alpine
WORKDIR /app
COPY . .
ARG NAME

ENV NEXT_PUBLIC_NAME=NAME
RUN npm install --omit=dev
RUN npm run build
CMD ["npm", "start"]
