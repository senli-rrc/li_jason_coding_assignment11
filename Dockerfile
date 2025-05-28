FROM node:14-alpine AS development
ENV NODE_ENV development
WORKDIR /li_jason_site
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7775
CMD ["npm", "start"]