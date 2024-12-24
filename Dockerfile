FROM node:22

WORKDIR /usr/src/app

COPY app-source/package*.json ./
RUN npm install

COPY app-source .

EXPOSE 3000

CMD ["npm", "run", "start"]