"""Tests for the default scenario of ansible-role-cassandra.

See https://testinfra.readthedocs.io/en/latest/modules.html for a full list
of modules available in TestInfra.
"""
import os
import re
import testinfra.utils.ansible_runner

hosts = os.environ['HOSTS']
testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts(hosts)


def test_nodetool_status(host):
    """Test that 'nodetool status' contains UN for the node.

    Additionally check that:
    - The dc has been set to 'DC1'.
    - The rack has been set to 'RACK1'.
    """
    # Get the IP address
    ipaddr = host.interface('eth0').addresses[0]
    cmd = host.run("nodetool status")
    assert cmd.rc == 0
    pattern = 'UN.*%s.*RACK1' % ipaddr
    matches = re.findall(pattern, cmd.stdout)
    assert len(matches) >= 1
    pattern = 'Datacenter: DC1'
    matches = re.findall(pattern, cmd.stdout)
    assert len(matches) >= 1


def test_config_file(host):
    """Test that the Cassandra cluster name has been set correctly."""
    distribution = host.system_info.distribution

    if distribution == 'centos' or distribution == 'fedora':
        config_file = '/etc/cassandra/conf/cassandra.yaml'
    else:
        config_file = '/etc/cassandra/cassandra.yaml'

    f = host.file(config_file)
    assert f.exists
    assert f.is_file
    assert f.contains('cluster_name: MyCassandraCluster')


def test_custom_directories(host):
    """Test that custom directories have been created."""
    d = host.file('/data')
    assert d.exists
    assert d.is_directory
    assert d.user == 'root'
    assert d.group == 'root'
    assert d.mode == 0o755

    directories = ['/data/cassandra/data', '/data/cassandra/hints']

    for dirname in directories:
        d = host.file(dirname)
        assert d.exists
        assert d.is_directory
        assert d.user == 'cassandra'
        assert d.group == 'cassandra'
        assert d.mode == 0o700


def test_cluster_name(host):
    """Test that the cluster name has been set correctly."""
    cmd = host.run("nodetool describecluster")
    assert cmd.rc == 0
    matches = re.findall('Name: MyCassandraCluster', cmd.stdout)
    assert len(matches) >= 1


def test_package(host):
    """Test that the package is installed."""
    assert host.package("cassandra").is_installed


def test_service(host):
    """Ensure that the service is enabled and running."""
    s = host.service('cassandra')
    assert s.is_running
    assert s.is_enabled
