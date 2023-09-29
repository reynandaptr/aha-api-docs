FROM reynandaptr/open-api:v0.0.3

WORKDIR /usr/src/app

COPY docs/ ./docs/

RUN npm install
RUN npm run build

EXPOSE 8080

CMD [ "npm", "start" ]
