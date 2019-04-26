all: lint test

lint:
	bundle exec travis lint --skip-completion-check --exit-code
	pydocstyle -esv .
	bundle exec rubocop -ES

test:
	molecule test -s $(SCENARIO)
