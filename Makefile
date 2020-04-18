
.PHONY: build
build:
	docker build \
		--tag website \
		.

.PHONY: run
run:
	docker run \
		--publish 127.0.0.1:8089:8080 \
		--rm \
		--name website \
		--volume "$$(pwd)/src/:/www/:ro" \
		website
