# Coding Assignment 11 – React App in Docker

This project demonstrates how to containerize a basic React application using Docker and `docker-compose`. The app displays:

```html
<h1>Codin 1</h1>
```

---

##  Steps to Build and Run

###  Step 1: Add a `Dockerfile`

Create a `Dockerfile` that:

- Uses Node.js as the base image
- Sets the working directory to `/li_jason_site`
- Installs dependencies
- Exposes port `7775`

###  Step 2: Add a `.dockerignore`

Ignore unnecessary files by adding the following to `.dockerignore`:

```
node_modules
npm-debug.log
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
    working_dir: /li_jason_site
    ports:
      - 7775:3000
```

###  Step 4: Modify `App.tsx`

Update `App.tsx` to display the heading:

```tsx
<h1>Codin 1</h1>
```

### ▶ Step 5: Run the App

Run the development container using:

```bash
docker-compose -f docker-compose.dev.yml up
```

### 🌐 Step 6: Open in Browser

Visit your app at:

[http://localhost:7775](http://localhost:7775)

You should see the heading **Codin 1** on the page.

---
