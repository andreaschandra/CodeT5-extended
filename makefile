codecheck:
	echo "Run code check..."
	tox

build:
	echo "Run docker build..."
	docker build . -t codet5
