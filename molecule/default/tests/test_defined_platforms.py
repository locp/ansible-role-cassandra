#!/usr/bin/env python
"""Check that the platforms that are defined in meta/main.yml are supported in Ansible Galaxy."""
import pytest
import requests
import yaml

GALAXY = "https://galaxy.ansible.com"
PLATFORMS_ENDPOINT = GALAXY + "/api/v1/platforms"

valid_platforms = {}
session = requests.Session()
defined_platforms = []


def get_platforms():
    page = session.get(PLATFORMS_ENDPOINT).json()
    yield page["results"]

    while page["next_link"] is not None:
        next_url = GALAXY + page['next_link']
        page = session.get(next_url).json()
        yield page["results"]


for results in get_platforms():
    for result in results:
        name = result["name"]
        version = result["release"]
        if name not in valid_platforms:
            valid_platforms[name] = {
                "name": name,
                "versions": []
            }
        if version not in valid_platforms[name]["versions"]:
            valid_platforms[name]["versions"].append(version)

with open('meta/main.yml') as stream:
    metadata = yaml.safe_load(stream)['galaxy_info']

for platform in metadata['platforms']:
    for version in platform['versions']:
        defined_platforms.append((platform['name'], version))


@pytest.mark.parametrize("platform,version", defined_platforms)
def test_defined_platforms(platform, version):
    assert platform in valid_platforms, f'{platform} is not a valid platform.'
    assert str(version) in valid_platforms[platform]['versions'],\
        f'The version "{version}" is not valid for the {platform} platform.'
