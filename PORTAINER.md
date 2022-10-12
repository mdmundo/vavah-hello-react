**Since Portainer does not fully support building images**

[FAQ](https://docs.portainer.io/v/be-2.10/faq/troubleshooting/can-i-build-an-image-while-deploying-a-stack-application-from-git) and [instructions](https://docs.portainer.io/v/be-2.10/user/docker/images/build).

Write `Dockerfile` as follows:

```dockerfile
from node:18
workdir /app
run git clone --depth 1 --single-branch https://github.com/mdmundo/vavah-hello-react .
run yarn
run yarn build
expose 4173
cmd yarn preview --host
```

Then, using the _name_ of the built image, write `docker-compose.yml`:

```yml
services:
  app:
    image: name
    ports:
      - 4173:4173
```
