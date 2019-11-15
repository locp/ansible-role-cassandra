all: lint test

lint:
	bundle exec --gemfile="$(GEMFILE)" travis lint --skip-completion-check --exit-code
	bundle exec --gemfile="$(GEMFILE)" rubocop -ES

# Filter the platforms to speed up tests.
# https://jqplay.org/s/oHABeI4TYx
config:
	test "$(HOSTS)"
	yq -y \
	  "{dependency: .dependency, driver: .driver, lint: .lint, platforms: [.platforms[] | select(.name | contains(\"$(HOSTS)\"))], provisioner: .provisioner, scenario: .scenario, verifier: .verifier}" \
	  "molecule/$(SCENARIO)/molecule-config.yml" | tee "molecule/$(SCENARIO)/molecule.yml"

test:
	molecule test -s "$(SCENARIO)"

changelog:
	bundle exec --gemfile="$(GEMFILE)" rake changelog
