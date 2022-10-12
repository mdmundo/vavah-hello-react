from node:18
workdir /app
# https://docs.portainer.io/v/be-2.10/faq/troubleshooting/can-i-build-an-image-while-deploying-a-stack-application-from-git
# https://docs.portainer.io/v/be-2.10/user/docker/images/build
# Since Portainer does not fully support building images
run git clone --depth 1 --single-branch https://github.com/mdmundo/vavah-hello-react .
run yarn
run yarn build
expose 4173
cmd yarn preview --host
