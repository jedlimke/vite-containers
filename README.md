# Vite Containers

### Step 0: Setup minimal Dockerfile and scaffold Vite project inside container

1. Create a minimal `Dockerfile` with the basic Node.js setup:
   - Sets working directory to `/workspace`
   - Copies `package.json` files if present and installs dependencies
   - Copies the rest of the project files
   - Exposes port 3000 and runs `npm run dev` by default

2. Open the project folder in VSCode using the Remote - Containers extension and reopen it in the dev container.

3. Inside the container terminal, scaffold a new Vite + TypeScript project in place by running:
```bash
npm create vite@latest . -- --template vanilla-ts
```

4. After scaffolding completes, install dependencies by running:
```bash
npm install
```