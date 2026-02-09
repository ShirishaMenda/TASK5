# ---- Base Node image ----
FROM node:20-alpine

# ---- Set working directory ----
WORKDIR /app

# ---- Copy package files ----
COPY package.json package-lock.json ./

# ---- Install dependencies ----
RUN npm install

# ---- Copy project files ----
COPY . .

# ---- Build Strapi ----
RUN npm run build

# ---- Expose Strapi port ----
EXPOSE 1337

# ---- Start Strapi ----
CMD ["npm", "start"]

