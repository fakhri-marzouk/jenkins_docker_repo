FROM node:15.13-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent 
RUN npm install react-scripts@1.1.4 -g --silent
COPY . ./
CMD ["npm","start"]