FROM kyma/docker-nginx

COPY test-app/ /var/www

CMD 'nginx'