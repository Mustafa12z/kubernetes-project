# Stage 1: Build Stage
FROM node:18-alpine AS build 

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install 

COPY . .

# Stage 2: Production Stage
FROM node:18-alpine 

WORKDIR /app

COPY --from=build /app /app 

EXPOSE 3000

CMD ["yarn", "start"]





