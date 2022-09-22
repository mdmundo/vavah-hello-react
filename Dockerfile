from node:18
workdir /app
copy . .
run yarn
run yarn build
cmd yarn preview
