lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml
	git ls-files | xargs ansible-review

install_current_version:
	rm -rf /tmp/roles
	ansible-galaxy install --roles-path /tmp/roles locp.cassandra
