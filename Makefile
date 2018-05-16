lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml

install_current_version:
	rm -rf /tmp/roles
	ansible-galaxy install --roles-path /tmp/roles locp.cassandra
