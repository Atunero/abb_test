# ---------- Stage 1 · Build ----------
FROM node:18-alpine AS builder
WORKDIR /app

# Enable Corepack (provides the same Yarn version used locally)
RUN corepack enable

# Copy manifest + lock first – keeps Docker layer cache valid
COPY package.json yarn.lock ./

# Install ALL dependencies
RUN yarn install --frozen-lockfile --silent

# Copy the rest of the source code and create the production build
COPY . .
RUN yarn build

# ---------- Stage 2 · Runtime ----------
FROM nginx:1.27-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
