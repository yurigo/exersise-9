# Add version like node:<version>
FROM node
WORKDIR /usr/src/node

COPY ./package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
