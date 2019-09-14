PAL_DOCKER_IMAGE ?= pytorch_active_learning/pytorch_active_learning:$(shell git rev-parse --verify --short HEAD)

build_docker_image:
	docker build --build-arg GID=$(shell id -g) --build-arg=GROUPNAME=$(shell id -g -n) --build-arg UID=$(shell id -u) --build-arg USERNAME=$(shell id -u -n) -t ${PAL_DOCKER_IMAGE} -f docker/Dockerfile .

run_docker_image:
	docker run -it --rm -v ${PWD}:/workspace/pytorch_active_learning --workdir /workspace/pytorch_active_learning ${PAL_DOCKER_IMAGE}

.PHONY: build_docker_image run_docker_image
