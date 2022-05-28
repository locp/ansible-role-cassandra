"""Test Cassandra feature tests."""

from pytest_bdd import scenario

# Ensure that the PyTest fixtures provided in testinfra-bdd are available to
# your test suite.
pytest_plugins = ['testinfra_bdd']


@scenario('../features/cassandra.feature', 'Check that a File Contains an Expected String')
def test_check_that_a_file_contains_an_expected_string():
    """Check that a File Contains an Expected String."""


@scenario('../features/cassandra.feature', 'Check that a file exists and matches an expected type')
def test_check_that_a_file_exists_and_matches_an_expected_type():
    """Check that a file exists and matches an expected type."""


@scenario('../features/cassandra.feature', 'Check the Cassandra Service and Package')
def test_check_the_cassandra_service_and_package():
    """Check the Cassandra Service and Package."""


@scenario('../features/cassandra.feature', 'Custom Directories')
def test_custom_directories():
    """Custom Directories."""


@scenario('../features/cassandra.feature', 'Run the nodetool command')
def test_run_the_nodetool_command():
    """Run the nodetool command."""
