FROM node:13-alpine
COPY ./package.json ./
RUN apk add git
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node","index.js"]