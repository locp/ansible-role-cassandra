all: lint config test

distro_check:
	molecule test -s distro_check

lint:
	bundle exec travis lint --skip-completion-check --exit-code
	bundle exec rubocop -ES

# Filter the platforms to speed up tests.
# https://jqplay.org/s/oHABeI4TYx
config:
	test "$(HOSTS)"
	yq -y \
	  "{dependency: .dependency, driver: .driver, lint: .lint, platforms: [.platforms[] | select(.name | contains(\"$(HOSTS)\"))], provisioner: .provisioner, scenario: .scenario, verifier: .verifier}" \
	  molecule/default/molecule-config.yml | tee molecule/default/molecule.yml

test:
	molecule test -s "$(SCENARIO)"

changelog:
	bundle exec rake changelog
