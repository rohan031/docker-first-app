FROM node:lts-alpine
WORKDIR /app
COPY . .
ARG name

ENV NEXT_PUBLIC_NAME=name
RUN npm install --omit=dev
RUN npm run build
CMD ["npm", "start"]
