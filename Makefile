all: lint test

lint:
	bundle exec travis lint --skip-completion-check --exit-code
	pydocstyle -esv .

test:
	molecule test -s $(SCENARIO)
