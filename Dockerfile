FROM nginx:stable-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf

EXPOSE 80

CMD ["nginx"]