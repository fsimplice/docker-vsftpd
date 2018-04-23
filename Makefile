TAG ?= latest
REPO ?= local/vsftpd

build: Dockerfile
	@echo "Building $(REPO):$(TAG) using Dockerfile"
	@docker build $(BUILD_OPTS) . -f Dockerfile -t $(REPO):$(TAG)
	@docker images | grep "$(REPO)"

run:
	@docker run \
		--rm \
		--name local-vsftpd \
		$(REPO):$(TAG)

run-shell:
	@docker run -it --rm $(RUN_OPTS) $(REPO):$(TAG) /bin/bash
