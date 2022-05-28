# ansible-role-cassandra

[![Gitter](https://badges.gitter.im/ansible-role-cassandra/community.svg)](https://gitter.im/ansible-role-cassandra/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![CI](https://github.com/locp/ansible-role-cassandra/actions/workflows/ci.yml/badge.svg?branch=develop)](https://github.com/locp/ansible-role-cassandra/actions/workflows/ci.yml)

Ansible role to install and configure
[Apache Cassandra](http://cassandra.apache.org/).

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

* `cassandra_15770_workaround`: (default: *False*)
  [CASSANDRA-15770](https://issues.apache.org/jira/browse/CASSANDRA-15770)
  affected Debian 10 and Ubuntu 20.04 it was subsequently fixed in versions
  3.0.21, 3.11.7, 4.0.  As we are running our tests against 3.11.6 at the
  moment, this applies the fix to `/etc/init.d/cassandra` if set to True.

* `cassandra_2356_workaround`: (default: *False*)
  [CASSANDRA-2356](https://issues.apache.org/jira/browse/CASSANDRA-2356)
  affected deb packages for Cassandra versions pre-4.0.

* `cassandra_cms_heap_new_size_mb`:
  A custom fact that returns a value (MB) that might be suitable to set the
  HEAP_NEWSIZE when using the Concurrent Mark Sweep (CMS) Collector.  See
  [Tuning Java resources](https://docs.datastax.com/en/cassandra/2.1/cassandra/operations/ops_tune_jvm_c.html)
  for more details.  Requires the `cassandra_memtotal_mb` and
  `cassandra_processor_vcpus` facts to be set.

* `cassandra_cms_max_heapsize_mb`:
  A custom fact that returns a value (MB) that might be suitable to set the
  MAX_HEAP_SIZE when using the Concurrent Mark Sweep (CMS) Collector.  See
  [Tuning Java resources](https://docs.datastax.com/en/cassandra/2.1/cassandra/operations/ops_tune_jvm_c.html)
  for more details.  Requires the `cassandra_memtotal_mb` fact to be set.

* `cassandra_configuration` (default: *none*):
  The configuration for Cassandra.  See the example play book below.

* `cassandra_configuration_directory` (default:
  `/etc/cassandra/default.conf` on RedHat and
  `/etc/cassandra` in Debian):
  The directory of the Cassandra configuration.

* `cassandra_configuration_file` (default:
  `/etc/cassandra/default.conf/cassandra.yaml` on RedHat and
  `/etc/cassandra/cassandra.yaml` on Debian):
  The location of the Cassandra configuration file.

* `cassandra_configuration_templ` (default: `cassandra.yaml.j2`):
  Name of the template file for Cassandra configuration.

* `cassandra_configure_apache_repo` (default: **False**):
  Whether to configure the Apache Cassandra repository.

  **SEE ALSO:** `cassandra_repo_apache_release`.

* `cassandra_dc`:
  If defined will set the Datacenter in `cassandra-rackdc.properties`.

  This option is deprecated and will be removed in a future release.  Please
  use `cassandra_regex_replacements` instead.

* `cassandra_directories`:
  If defined, this will create directories after the package has been
  installed (therefore when the cassandra user is available) but before
  Cassandra is configured.  See the example playbook for more details.

  Please note that when used with the `cassandra_join_cluster` option the
  paths specified here will be deleted (with all their contents) and
  recreated so that the node can join a cluster correctly.

* `cassandra_heap_new_size_mb`:
  A custom fact that returns a value (MB) that might be suitable to set the
  HEAP_NEWSIZE.  See
  [Tuning Java resources](https://docs.datastax.com/en/cassandra/2.1/cassandra/operations/ops_tune_jvm_c.html)
  for more details.  Requires the `cassandra_memtotal_mb` and
  `cassandra_processor_vcpus` facts to be set.

* `cassandra_install_packages` (default: **True**):
  A boolean value indicating if this Ansible role should attempt to install
  packages or not.  If set to **False** it allows a user to use this role to
  configure Cassandra but does not attempt to install it (e.g. they have
  installed from source code).

* `cassandra_join_cluster` (default: **False**):
  This is an experimental feature, use with extreme caution!  If set to true
  and the `cassandra_node_count` is found to be 1 on a node, the following
  actions will take place on that node before the node is configured:
  - Cassandra will be stopped
  - The Cassandra data directory/directories will be cleared of all data.

  When that has been done, the node will be reconfigured and join a cluster
  (which should be larger in size than one node).

* `cassandra_max_heapsize_mb`:
  A custom fact that returns a value (MB) that might be suitable to set the
  MAX_HEAP_SIZE.  See
  [Tuning Java resources](https://docs.datastax.com/en/cassandra/2.1/cassandra/operations/ops_tune_jvm_c.html)
  for more details.  Requires the `cassandra_memtotal_mb` fact to be set.

* `cassandra_memtotal_mb` (default: `ansible_memtotal_mb` if set):
  Is used to calculate
  `cassandra_cms_max_heapsize_mb`, `cassandra_max_heapsize_mb`,
  `cassandra_cms_heap_new_size_mb` and `cassandra_heap_new_size_mb`.

* `cassandra_path`
  This variable was introduced in version 1.4.0 but was
  missed from being documented.  As
  [pointed out](https://github.com/locp/ansible-role-cassandra/issues/116) if the variable is defined when the
  variable is set and the directory is deleted, it is not
  recreated.  The variable has now been deprecated in
  favour of `cassandra_directories`.

* `cassandra_node_count`:
  A read-only variable that attempts to contain the number of nodes in the
  cluster.  Will only be set if `cassandra_join_cluster` is set to `True`.

* `cassandra_package` (default: `cassandra`):
  The name of the package to be installed to provide Cassandra.

* `cassandra_processor_vcpus` (default: `ansible_processor_vcpus` if set):
  Is used to calculate `cassandra_cms_heap_new_size_mb` and
  `cassandra_heap_new_size_mb`.

* `cassandra_rack`:
  If defined will set the rack in `cassandra-rackdc.properties`.

  This option is deprecated and will be removed in a future release.  Please
  use `cassandra_regex_replacements` instead.

* `cassandra_regex_replacements` (default: []):
  A list of hashes describing a `path` which is relative to
  `cassandra_configuration_directory`, `regexp` which is a regular
  expression to find in a file and `line` is the replacement within the
  file.  See the example playbook for more details.

* `cassandra_repo_apache_release` (default: *None*):
  The name of the release series (can be one of 40x, 311x, or 30x).  This
  must be set if `cassandra_configure_apache_repo` is set to True.

* `cassandra_service_enabled` (default: **yes**):
  Should the cassandra service be enabled (can be yes or no).

* `cassandra_service_restart` (default: **True**):
  If set to true, changes to the Cassandra configuration file or the data
  directories will ensure that Cassandra service is refreshed after the
  changes.  Setting this flag to false will disable this behaviour, therefore
  allowing the changes to be made but allow the user to control when the service
  is restarted.

* `cassandra_systemd_enabled` (default: **False**):
  Should the Cassandra service by enabled via
  [systemd](https://freedesktop.org/wiki/Software/systemd/)
  if set to **True** then a unit file will be placed in
  `cassandra_systemd_path` created from template
  `cassandra_systemd_template`.

* `cassandra_systemd_path` (default: `/usr/lib/systemd/system/cassandra.service`):
  The path to a unit file for Cassandra.  This variable is ignored if
  `cassandra_systemd_enabled` is **False**.

* `cassandra_systemd_template` (default:
  `"systemd/system/cassandra.service.j2"`:
  The path for a template from which to create unit file for Cassandra.  This
  variable is ignored if `cassandra_systemd_enabled` is **False**.

* `cassandra_task_delay` (default: 10):
  Ansible tasks that rely on network connectivity (i.e. `apt`, `apt_key`,
  `apt_repository`, `package` and `yum`) may be affected by high latency
  so those tasks are configured to retry.  This parameter is how long to
  wait between attempts.  See also `cassandra_task_retries`.

* `cassandra_task_retries` (default: 5):
  Ansible tasks that rely on network connectivity (i.e. `apt`, `apt_key`,
  `apt_repository`, `package` and `yum`) may be affected by high latency
  so those tasks are configured to retry.  This parameter is how many
  attempts should be made.  See also `cassandra_task_delay`.

## Example Playbook

This playbook should be enough to configure Cassandra with a *very* basic
[configuration](https://cassandra.apache.org/doc/latest/getting_started/configuring.html):

```YAML
---
- name: Example Playbook for the locp.cassandra Role

  hosts: cassandra

  remote_user: root

  vars:
    cassandra_configuration:
      authenticator: PasswordAuthenticator
      cluster_name: MyCassandraCluster
      commitlog_directory: /data/cassandra/commitlog
      commitlog_sync: periodic
      commitlog_sync_period_in_ms: 10000
      data_file_directories:
        - /data/cassandra/data
      endpoint_snitch: GossipingPropertyFileSnitch
      hints_directory: "/data/cassandra/hints"
      listen_address: "{{ ansible_default_ipv4.address }}"
      # For a sensible value to set num_tokens to, please see
      # https://cassandra.apache.org/doc/latest/getting_started/production.html#tokens
      num_tokens: 4
      partitioner: org.apache.cassandra.dht.Murmur3Partitioner
      saved_caches_directory: /data/cassandra/saved_caches
      seed_provider:
        - class_name: "org.apache.cassandra.locator.SimpleSeedProvider"
          parameters:
            # This sets the seed to the first node in the Ansible group called
            # cassandra.
            - seeds: "{{ hostvars[groups['cassandra'][0]]['ansible_default_ipv4'].address }}"
      start_native_transport: true
    cassandra_configure_apache_repo: true
    # Create an alternative directories structure for the Cassandra data.
    # In this example, the will be a directory called /data owned by root
    # with rwxr-xr-x permissions.  It will have a series of sub-directories
    # all of which will be defaulted to being owned by the cassandra user
    # with rwx------ permissions.
    cassandra_directories:
      root:
        group: root
        mode: "0755"
        owner: root
        paths:
          - /data
      data:
        paths:
          - /data/cassandra
          - /data/cassandra/commitlog
          - /data/cassandra/data
          - /data/cassandra/hints
          - /data/cassandra/saved_caches
    cassandra_regex_replacements:
      - path: cassandra-env.sh
        line: 'MAX_HEAP_SIZE="{{ cassandra_max_heapsize_mb }}M"'
        regexp: '^#MAX_HEAP_SIZE="4G"'
      - path: cassandra-env.sh
        line: 'HEAP_NEWSIZE="{{ cassandra_heap_new_size_mb }}M"'
        regexp: '^#HEAP_NEWSIZE="800M"'
      - path: cassandra-rackdc.properties
        line: 'dc=DC1'
        regexp: '^dc='
      - path: cassandra-rackdc.properties
        line: 'rack=RACK1'
        regexp: '^rack='
    cassandra_repo_apache_release: 40x

  roles:
    - role: locp.cassandra
```

To see the playbooks that are used for
[testing](CONTRIBUTING.md#testing) see
[molecule/default/converge.yml](molecule/default/converge.yml)
and
[molecule/combine_cluster/converge.yml](molecule/combine_cluster/converge.yml).

## License

[GPLv3](https://github.com/locp/ansible-role-cassandra/blob/master/LICENSE)

## Author Information

Developed by the
[League of Crafty Programmers](http://www.locp.co.uk) Ltd.

To raise issues or make contributions, please go to
https://github.com/locp/ansible-role-cassandra/issues
