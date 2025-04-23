FROM  nginx
RUN   apt update && apt install dnsutils iproute2 net-tools iputils-ping ssh nano python3 -y
COPY  /root/index.html   /usr/share/nginx/html/index.html  
EXPOSE  80
