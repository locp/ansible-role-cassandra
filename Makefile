clean:
	kitchen destroy
	rm -rf .kitchen

lint:
	bundle exec travis lint --skip-completion-check --exit-code
	bundle exec rubocop -ES
	ansible-lint -pv . test/test.yml
	ansible-review -c ./test/ansible-review.cfg \
	  defaults/main.yml \
	  handlers/main.yml \
	  meta/main.yml \
	  tasks/apache_repo.yml \
	  tasks/directory.yml \
	  tasks/main.yml \
	  test/test.yml
