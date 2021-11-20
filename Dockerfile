    FROM node:alpine
    WORKDIR /app
    COPY package.json package-lock.json ./
    RUN npm install
    RUN npm install concurrently
    COPY . .
    EXPOSE 3001
    CMD ["npm", "run", "watch"]
    