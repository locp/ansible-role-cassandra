lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml
	ansible-review -c ./tests/ansible-review.cfg \
	  defaults/main.yml \
	  handlers/main.yml \
	  meta/main.yml \
	  tasks/apache_repo.yml \
	  tasks/directory.yml \
	  tasks/main.yml \
	  tests/test.yml

install_current_version:
	rm -rf /tmp/roles
	ansible-galaxy install --roles-path /tmp/roles locp.cassandra
