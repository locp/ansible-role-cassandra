# ansible-role-cassandra

Ansible role to install and configure Apache Cassandra.

## Requirements

### OS Family Identification
The Ansible playbook must gather enough facts to have the `ansible_os_family`
variable to be set.

### Python Modules
On Debian systems that set `cassandra_configure_apache_repo` to **True** please
note that the
[`apt_repository`](http://docs.ansible.com/ansible/latest/modules/apt_repository_module.html)
module is used.  Therefore the below requirements are needed on the host that
executes this module.

* python-apt (python 2)
* python3-apt (python 3)

## Role Variables

* `cassandra_configuration` (default: *none*):
  The configuration for Cassandra.  See the example play book below.

* `cassandra_configuration_file` (default: `/etc/cassandra/default.conf/cassandra.yaml` on RedHat and
  `/etc/cassandra/cassandra.yaml` on Debian):
  The location of the Cassandra configuration file.

* `cassandra_configuration_templ` (default: `cassandra.yaml.j2`):
  Name of the template file for Cassandra configuration.

* `cassandra_configure_apache_repo` (default: **False**):
  Whether to configure the Apache Cassandra repository.

  **SEE ALSO:** `cassandra_repo_apache_release`.

* `cassandra_package` (default: `cassandra`):
  The name of the package to be installed to provide Cassandra.

* `cassandra_repo_apache_release` (default: *None*):
  The name of the release series (can be one of 311x, 30x, 22x, or 21x).  This
  must be set if `cassandra_configure_apache_repo` is set to True.

* `cassandra_service_enabled` (default: **yes**):
  Should the cassandra service be enabled (can be yes or no).

* `cassandra_service_restart` (default: **True**):
  If set to true, changes to the Cassandra configuration file or the data
  directories will ensure that Cassandra service is refreshed after the
  changes.  Setting this flag to false will disable this behaviour, therefore
  allowing the changes to be made but allow the user to control when the service
  is restarted.

## Example Playbook

```YAML
---
- hosts: localhost

  remote_user: root

  roles:
    - cassandra

  vars:
    cassandra_configuration:
      authenticator: PasswordAuthenticator
      cluster_name: MyCassandraCluster
      commitlog_directory: /var/lib/cassandra/commitlog
      commitlog_sync: periodic
      commitlog_sync_period_in_ms: 10000
      data_file_directories:
        - /var/lib/cassandra/data
      endpoint_snitch: GossipingPropertyFileSnitch
      hints_directory: "/var/lib/cassandra/hints"
      listen_address: "{{ ansible_default_ipv4.address }}"
      partitioner: org.apache.cassandra.dht.Murmur3Partitioner
      saved_caches_directory: /var/lib/cassandra/saved_caches
      seed_provider:
        -
          class_name: "org.apache.cassandra.locator.SimpleSeedProvider"
          parameters:
            -
              seeds: "{{ ansible_default_ipv4.address }}"
      start_native_transport: true
    cassandra_configure_apache_repo: true
    cassandra_dc: DC1
    cassandra_rack: RACK1
    cassandra_repo_apache_release: 311x
```

## License

[GPLv3](LICENSE)

## Author Information

Developed by the
[League of Crafty Programmers](http://www.locp.co.uk) Ltd.

To raise issues or make contributions, please go to
https://github.com/locp/ansible-role-cassandra/issues
