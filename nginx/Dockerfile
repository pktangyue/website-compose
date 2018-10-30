FROM nginx:stable-alpine
#RUN sed -i -- 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --update --no-cache tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ARG DOMAIN
COPY . /etc/nginx/
COPY favicon/ /usr/share/nginx/html/
RUN /bin/sh /etc/nginx/run.sh
ENTRYPOINT nginx -g 'daemon off;'
