lint:
	bundle exec travis lint --skip-completion-check --exit-code
	ansible-lint -pv \
		molecule/*/prepare.yml \
		*/*.yml
	ansible-review -c ./.ansible-review/ansible-review.cfg \
		molecule/*/prepare.yml \
		*/*.yml
	pydocstyle -esv .
