FROM node AS base

WORKDIR /project

COPY tsconfig.json .
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY src/ src/
RUN npm run build

ENTRYPOINT [ "npm", "start" ]
