# Coding Assignment 11 – React App in Docker

This project demonstrates how to containerize a basic React application using Docker and `docker-compose`. The app displays:

```html
<h1>Codin 1</h1>
```

---

##  Steps to Build and Run

###  Step 1: Add a `Dockerfile`

```
FROM node:14-alpine AS development
ENV NODE_ENV development
WORKDIR /li_jason_site
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7775
CMD ["npm", "start"]
```

###  Step 2: Add a `.dockerignore`

Ignore unnecessary files by adding the following to `.dockerignore`:

```
**/node_modules
**/npm-debug.log
build
```

###  Step 3: Add `docker-compose.dev.yml`

Create `docker-compose.dev.yml` with the following:

```yaml
version: "3.8"

services:
  app:
    container_name: li_jason_coding_assignment11
    image: li_jason_coding_assignment11
    build:
      context: .
      target: development
    volumes:
      - ./src:/li_jason_site/src
    ports:
      - "7775:3000"
    working_dir: /li_jason_site/
```

###  Step 4: Modify `App.tsx`

Update `App.tsx` to display the heading:

```tsx
<h1>Codin 1</h1>
```

###  Step 5: Run the App

Run the development container using:

```bash
docker-compose -f docker-compose.dev.yml up
```

###  Step 6: Open in Browser

Visit your app at:

[http://localhost:7775](http://localhost:7775)

You should see the heading **Codin 1** on the page.

---
