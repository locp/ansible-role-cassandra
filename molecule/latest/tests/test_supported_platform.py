import os
import testinfra
import testinfra.utils.ansible_runner
import unittest
import yaml

from parameterized import parameterized_class

ansible_runner = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
)
testinfra_hosts = ansible_runner.get_hosts()
hosts = []

for host in testinfra_hosts:
    hosts.append((host,))


@parameterized_class(
    'container_name',
    hosts
)
class TestSupportedPlatform(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        metadata_file_name = 'meta/main.yml'

        with open(metadata_file_name) as f:
            metadata = yaml.load(f, Loader=yaml.FullLoader)

        cls.platforms = metadata['galaxy_info']['platforms']

    def test_platform_is_supported(self):
        host = testinfra.get_host(f'docker://{self.container_name}')
        platforms = self.platforms

        platform_names = {
            'centos': 'EL',
            'debian': 'Debian',
            'fedora': 'Fedora',
            'ubuntu': 'Ubuntu'
        }

        distribution = host.system_info.distribution
        self.assertIn(distribution, platform_names,
                      'Unknown distribution.')
        platform_name = platform_names[distribution]
        platform = None

        for p in platforms:
            if p['name'] == platform_name:
                platform = p
                break

        supported_versions = platform['versions']

        if platform_name == 'EL' or platform_name == 'Fedora':
            version = host.system_info.release.split('.')[0]
        else:
            version = host.system_info.codename

        self.assertIn(version, supported_versions)
