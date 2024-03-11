setup:
	pip install --upgrade pip wheel setuptools
	pip install -r requirements_dev.txt
	pip install -r requirements.txt
	zenml integration install s3 aws -y

zen:
	zenml init 
	zenml stack import -f docker_stack.yaml docker_local
	zenml stack set docker_local

format:
	isort src
	isort run.py
	black src
	black run.py
