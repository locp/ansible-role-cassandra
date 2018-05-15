lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml

install_current_version:
	ansible-galaxy install --force locp.cassandra
