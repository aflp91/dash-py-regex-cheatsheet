SRC=py_regex.rb

.PHONY: build

build:
	cheatset generate $(SRC)
	