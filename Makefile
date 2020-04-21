
.PHONY: run
run:
	docker run \
		--name website \
		--volume "$$(pwd)/src/:/usr/share/nginx/html:ro" \
		--publish 127.0.0.1:8080:80 \
		--rm \
		nginx
