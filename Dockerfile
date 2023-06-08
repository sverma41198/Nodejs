FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
#Run npm ci --only=production
COPY . .

EXPOSE 3000
CMD ["node","server.js"]
