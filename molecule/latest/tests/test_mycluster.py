"""Tests for the default scenario of ansible-role-cassandra.

See https://testinfra.readthedocs.io/en/latest/modules.html for a full list
of modules available in TestInfra.
"""
import os
import re
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('clustered')


def get_config_path(host):
    """Return the config path, depending on the distribution."""
    distribution = host.system_info.distribution

    if distribution == 'centos' or distribution == 'fedora':
        return '/etc/cassandra/default.conf'

    return '/etc/cassandra'


def test_config_file(host):
    """Test that the Cassandra cluster name has been set correctly."""
    f = host.file('%s/cassandra.yaml' % get_config_path(host))
    assert f.exists
    assert f.is_file
    assert f.contains('cluster_name: MyCassandraCluster')


def test_cluster_name(host):
    """Test that the cluster name has been set correctly."""
    cmd = host.run('nodetool describecluster')
    assert cmd.rc == 0
    matches = re.findall('Name: MyCassandraCluster', cmd.stdout)
    assert len(matches) >= 1
