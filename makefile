codecheck:
	echo "Run code check..."
	tox

build:
	echo "Run docker build..."
	docker build . -t codet5

cleanup:
	find . | grep -E "__pycache__$\" | xargs rm -rf
	rm -rf CodeT5/sh/tensorboard CodeT5/sh/saved_models
	rm -rf logs/*