# mengambil image berupa node.js versi 14 dari Docker Hub
FROM node:14-alpine

# set working directory container ke /app
WORKDIR /app

# menyalin seluruh source code ke working directory container
COPY . .

# menjalankan aplikasi pada production mode
# serta mengatur item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstall dependencies untuk production
# serta build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Menjalankan server
CMD ["npm", "start"]
