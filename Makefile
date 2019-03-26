script:
	bundle exec travis lint --skip-completion-check --exit-code
	ansible-review -c ./.ansible-review/ansible-review.cfg \
		molecule/default/prepare.yml \
		molecule/default/playbook.yml \
		*/*.yml
	pydocstyle -esv .
	molecule lint
	molecule destroy
	molecule dependency
	molecule syntax
	molecule create
	molecule prepare
	molecule converge -- --check
	molecule converge
	molecule idempotence
	molecule --debug verify
	molecule destroy
