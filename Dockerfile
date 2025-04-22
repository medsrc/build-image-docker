FROM  nginx:latest
RUN   apt update && apt install dnsutils iproute2 net-tools iputils-ping ssh nano python3 -y
COPY  ./site-exemple/index.html   /usr/share/nginx/html
EXPOSE  80
