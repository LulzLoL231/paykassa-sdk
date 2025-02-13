install_dependencies:
	python3 -m pip install --upgrade build
	python3 -m pip install --upgrade twine

build: install_dependencies
	rm -r -f dist
	python3 -m build

deploy: build
	python3 -m twine upload --repository pypi dist/*