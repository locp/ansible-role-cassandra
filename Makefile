lint:
	bundle exec travis lint --skip-completion-check --exit-code
	pydocstyle -esv .
