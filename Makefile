.PHONY: run-image

.PHONY: run-image
run-image:
	docker run --rm -itd -v `pwd`:/app -v ${HOME}/.aws:/root/.aws:ro aws-cdk-python-docker