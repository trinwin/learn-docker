# Build Phase
FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Run Phase
FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html