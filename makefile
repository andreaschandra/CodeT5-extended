codecheck:
	echo "Run code check..."
	tox

build:
	echo "Run docker build..."
	docker build . -t codet5

cleanup:
	find . | grep -E "(/__pycache__$|\.pyc$|\.pyo$)" | xargs rm -rf