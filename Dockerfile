FROM node:18

WORKDIR /app

RUN npm install -g @medusajs/medusa-cli

RUN medusa new my-medusa-app --skip-db

WORKDIR /app/my-medusa-app

RUN npm install

CMD ["npm", "run", "start"]
