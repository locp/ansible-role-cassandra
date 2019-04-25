all: lint test

lint:
	bundle exec travis lint --skip-completion-check --exit-code
	pydocstyle -esv .

test:
	molecule test -s $(SCENARIO)

# Lint artefacts that are part of the development of the role rather than
# what is delivered by it (i.e. they should be checked, but won't affect
# the operation of the role delivered).
devlint:
	bundle exec travis lint -x
	bundle exec rubocop -ES
