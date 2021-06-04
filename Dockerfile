FROM node
LABEL author="Paul Aglipay"

ENV NODE_ENV=production
# WORKDIR /usr/src/app
WORKDIR /var/www
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
