import os
import pytest
import testinfra.utils.ansible_runner
import yaml

hosts = os.environ['HOSTS']
testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts(hosts)


def test_os_version_supported(host):
    if 'SCENARIO' not in os.environ or os.environ['SCENARIO'] != 'latest':
        pytest.skip('Not the latest scenario.')

    with open('../../meta/main.yml', 'r') as meta_file:
        meta_data = yaml.load(meta_file)

    galaxy_distribution_names = {
        'centos': 'EL',
        'debian': 'Debian',
        'fedora': 'Fedora',
        'ubuntu': 'Ubuntu'
    }

    versions = None
    distribution = host.system_info.distribution
    platforms = meta_data['galaxy_info']['platforms']

    for platform in platforms:
        if platform['name'] == galaxy_distribution_names[distribution]:
            versions = platform['versions']

    assert versions is not None, f'Unknown platform for {distribution}'

    if distribution in ['debian', 'ubuntu']:
        version = host.system_info.codename
    else:
        version = int(host.system_info.release.split('.')[0])

    assert version in versions, \
        'Unsupported version ({version}) for {distribution}'
