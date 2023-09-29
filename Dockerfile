# mengambil image berupa node.js versi 20 dari Docker Hub
FROM node:20-alpine

# set working directory container ke /app
WORKDIR /app

# menyalin seluruh source code ke working directory container
COPY . .

# menginstall dependencies pada package.json
RUN npm install

# ekspos port 8081
EXPOSE 8081

# menjalankan aplikasi
CMD ["npm", "start"]
