FROM mcr.microsoft.com/appsvc/node:18-lts_20230717.5

WORKDIR /home/site/wwwroot

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 8080
EXPOSE 8080

CMD ["node", "app.js"]