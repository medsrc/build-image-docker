FROM  nginx:latest
RUN   apt update && apt install net-tools iputils-ping iproute2 -y 
COPY  ./monsite/* /usr/share/nginx/html

