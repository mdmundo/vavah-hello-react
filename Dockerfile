from node:18
workdir /app
copy . .
run yarn
run yarn build
expose 4173
cmd yarn preview
