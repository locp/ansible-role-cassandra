"""Tests for the default scenario of ansible-role-cassandra.

See https://testinfra.readthedocs.io/en/latest/modules.html for a full list
of modules available in TestInfra.
"""
import os
import re
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts()


def get_config_path(host):
    """Return the config path, depending on the distribution."""
    distribution = host.system_info.distribution

    if distribution == 'centos' or distribution == 'fedora':
        return '/etc/cassandra/default.conf'

    return '/etc/cassandra'


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
