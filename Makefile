install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

#Formatting using py black
format:
	black *.py

#disable extra verbose warnings via R,C
lint:
	pylint --disable=R,C hello.py

#vv = verbose output
# cov = coverage
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: format lint test
