"""Tests for the default scenario of ansible-role-cassandra.

See https://testinfra.readthedocs.io/en/latest/modules.html for a full list
of modules available in TestInfra.
"""
import os
import re
import pytest
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts()


def get_config_path(host):
    """Return the config path, depending on the distribution."""
    distribution = host.system_info.distribution

    if distribution == 'centos' or distribution == 'fedora':
        return '/etc/cassandra/default.conf'

    return '/etc/cassandra'


def test_heap_new_size(host):
    """Test that the Cassandra cluster name has been set correctly."""
    f = host.file('%s/cassandra-env.sh' % get_config_path(host))
    assert f.exists
    assert f.is_file
    assert f.contains('MAX_HEAP_SIZE="640M"')


def test_nodetool_status(host):
    """Test that 'nodetool status' contains UN for the node.

    Additionally check that:
    - The dc has been set to 'DC1'.
    - The rack has been set to 'RACK1'.
    """
    # Get the IP address
    ipaddr = host.interface('eth0').addresses[0]
    cmd = host.run('nodetool status')
    assert cmd.rc == 0
    pattern = 'UN.*%s.*RACK1' % ipaddr
    matches = re.findall(pattern, cmd.stdout)
    assert len(matches) >= 1
    pattern = 'Datacenter: DC1'
    matches = re.findall(pattern, cmd.stdout)
    assert len(matches) >= 1


def test_config_file(host):
    """Test that the Cassandra cluster name has been set correctly."""
    f = host.file('%s/cassandra.yaml' % get_config_path(host))
    assert f.exists
    assert f.is_file


@pytest.mark.parametrize('dirname,user,group,mode', [
    ('/data',                 'root',      'root',      0o755),
    ('/data/cassandra/data',  'cassandra', 'cassandra', 0o700),
    ('/data/cassandra/hints', 'cassandra', 'cassandra', 0o700),
])
def test_custom_directories(host, dirname, user, group, mode):
    """Test that custom directories have been created."""
    d = host.file(dirname)
    assert d.exists
    assert d.is_directory
    assert d.user == user
    assert d.group == group
    assert d.mode == mode


def test_package(host):
    """Test that the package is installed."""
    assert host.package('cassandra').is_installed


def test_service_enabled(host):
    """Ensure that the service is enabled and running."""
    s = host.service('cassandra')
    assert s.is_enabled


def test_service_running(host):
    """Ensure that the service is enabled and running."""
    s = host.service('cassandra')
    assert s.is_running


def test_rack(host):
    """Test that the rack and data center have been set correctly."""
    f = host.file('%s/cassandra-rackdc.properties' % get_config_path(host))
    assert f.contains('rack=RACK1')


def test_rack_dc(host):
    """Test that the rack and data center have been set correctly."""
    f = host.file('%s/cassandra-rackdc.properties' % get_config_path(host))
    assert f.contains('dc=DC1')
