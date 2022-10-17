from node:18
workdir /app
copy public/ .
copy src/ .
copy index.html .
copy package.json .
copy tsconfig.json .
copy tsconfig.node.json .
copy vite.config.ts .
run yarn
run yarn build
expose 4173
cmd yarn preview --host
