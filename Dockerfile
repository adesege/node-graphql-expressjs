FROM mhart/alpine-node:9

RUN mkdir -p /www/

WORKDIR /www/

COPY package.json /www/

RUN npm install

COPY . /www/

EXPOSE 5100

# RUN npm install && npm run build

# CMD npm run start