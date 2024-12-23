docker rm -f vue-nginx
docker run -dit \
	--name vue-nginx \
	-p 8080:80 \
	vue-nginx:1.1