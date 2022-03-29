FROM node:17-alpine as build-image

WORKDIR /app/

COPY package.json .

RUN npm install

COPY . .

RUN npm install -g @angular/cli \    
    && ng build

FROM nginx:alpine

COPY --from=build-image /app/dist/hello-mama/ /usr/share/nginx/html