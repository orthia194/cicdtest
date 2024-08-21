FROM node:20
WORKDIR /app
COPY dockercicdtest/package*.json ./
RUN npm install
COPY dockercicdtest ./
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
