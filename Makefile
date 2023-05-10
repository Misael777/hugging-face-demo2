install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=app cov=greeting \
		--cov=smath --cov=web test
	python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4

debugthree:
	#not working the way I excpect
	python -m pytest -vv --pdb --amxfail=4

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test format