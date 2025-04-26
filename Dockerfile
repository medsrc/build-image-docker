FROM  nginx:latest
RUN   apt update && apt install net-tools -y 
COPY  ./monsite/* /usr/share/nginx/html

