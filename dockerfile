FROM node:6
WORKDIR /main
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
