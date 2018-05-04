lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml
