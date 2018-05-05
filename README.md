# ansible-role-cassandra

Ansible role to install and configure Apache Cassandra.

## Requirements

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

## Role Variables

|Variable Name                  |Default|Description                                         |
|-------------------------------|---------|----------------------------------------------------|
|cassandra_configure_apache_repo|false    |Whether to configure the Apache Cassandra repository|
|cassandra_package              |cassandra|The name of the package to be installed to provide Cassandra|
|cassandra_repo_apache_release  |311x     |The name of the release series (can be one of 30x, 22x, or 21x).|

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

## Example Playbook

```YAML
---
- hosts: localhost

  remote_user: root

  vars:
    cassandra_configure_apache_repo: True
    cassandra_repo_apache_release: 311x

  roles:
    - cassandra
```

## License

GPLv3

## Author Information

Developed by the
[League of Crafty Programmers](http://www.locp.co.uk) Ltd.

To raise issues or make contributions, please go to
https://github.com/locp/ansible-role-cassandra/issues
