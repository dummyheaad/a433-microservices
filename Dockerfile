# mengambil image berupa node.js versi 20 dari Docker Hub
FROM node:20-alpine

# set working directory container ke /app
WORKDIR /app

# menyalin seluruh source code ke working directory container
COPY . .

# menginstall dependencies pada package.json
RUN npm install

# ekspos port 8080
EXPOSE 8080

# menjalankan aplikasi
CMD ["npm", "start"]
