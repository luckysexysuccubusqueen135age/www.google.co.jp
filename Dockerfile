FROM nginx:alpine

# assets 폴더를 Nginx 웹 루트로 복사
COPY ./assets /usr/share/nginx/html

# Nginx 기본 설정
RUN echo "server { \
    listen 80 default_server; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files \$uri \$uri/ /index.html; \
    } \
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ { \
        expires 1y; \
        add_header Cache-Control 'public, immutable'; \
    } \
}" > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
