build: clean test coverage

clean:
	rm -rf .coverage
	rm -rf htmlcov
	rm -f pyaem/*.pyc
	rm -f test/*.pyc

deps:
	pip install -r requirements-dev.txt --use-mirrors

lint:
	pylint pyaem
	pylint test

test:
	python setup.py test

coverage:
	coverage run setup.py test
	coverage report -m

.PHONY: clean lint test coverage all
