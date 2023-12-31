install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web --cov=cli tests
	python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb

debugthree:
	python -m pytest -vv --pdb --maxfail=3

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test