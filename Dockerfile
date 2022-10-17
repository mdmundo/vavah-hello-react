from node:18
workdir /app
copy public/ public/
copy src/ src/
copy index.html index.html
copy package.json package.json
copy tsconfig.json tsconfig.json
copy tsconfig.node.json tsconfig.node.json
copy vite.config.ts vite.config.ts
run yarn
run yarn build
expose 4173
cmd yarn preview --host
