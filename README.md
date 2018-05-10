# ansible-role-cassandra

Ansible role to install and configure Apache Cassandra.

## Requirements

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

## Role Variables

|Variable Name                  |Default  |Description                                         |
|-------------------------------|---------|----------------------------------------------------|
|cassandra_configuration        |         |The configuration for Cassandra.                    |
|cassandra_configuration_file   |/etc/cassandra/conf/cassandra.yaml(RedHat)|The location of the Cassandra configuration file.|
||/etc/cassandra/cassandra.yaml(Debian)||
|cassandra_configuration_templ  |cassandra.yaml.j2|Name of the template file for Cassandra configuration.|
|cassandra_configure_apache_repo|False    |Whether to configure the Apache Cassandra repository|
|cassandra_package              |cassandra|The name of the package to be installed to provide Cassandra|
|cassandra_repo_apache_release  |311x     |The name of the release series (can be one of 30x, 22x, or 21x).|
|cassandra_service_restart      |True     |If set to true, changes to the Cassandra config file or the data directories will ensure that Cassandra service is refreshed after the changes.  Setting this flag to false will disable this behaviour, therefore allowing the changes to be made but allow the user to control when the service is restarted.|

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

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
      listen_address: "{{ ansible_default_ipv4.address }}"
      partitioner: org.apache.cassandra.dht.Murmur3Partitioner
      saved_caches_directory: /var/lib/cassandra/saved_caches
      seed_provider:
        -
          class_name: "org.apache.cassandra.locator.SimpleSeedProvider,"
          parameters:
            -
              seeds: "{{ ansible_default_ipv4.address }}"
      start_native_transport: true
    cassandra_configure_apache_repo: true
    cassandra_repo_apache_release: 311x
```

## License

GPLv3

## Author Information

Developed by the
[League of Crafty Programmers](http://www.locp.co.uk) Ltd.

To raise issues or make contributions, please go to
https://github.com/locp/ansible-role-cassandra/issues
