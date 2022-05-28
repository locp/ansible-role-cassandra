# Contributing to ansible-role-cassandra

ansible-role-cassandra is developed using a standard Github pull request
process. Almost all code is reviewed in pull requests.

The general process for working on ansible-role-cassandra is:

- Fork the project on Github
- Clone your fork to your local machine
- Create a feature branch from `develop` (e.g.
  `git branch delete_all_the_code`)
- Write code, commit often
- Write test cases for all changed functionality
- Submit a pull request against `develop` on Github
- Wait for code review!

Things that will make your branch more likely to be pulled:

- Comprehensive, fast test cases
- Detailed explanation of what the change is and how it works
- Reference relevant issue numbers in the tracker
- API backward compatibility

Thinks that will have your pull request rejected:

- The code is not idempotent
- The code is not functional on all of the supported platforms.

If you add a new configuration option, please try to do all of these things:

- Make its name unambiguous in the context of multiple runners (e.g.
  `task_instance_type` instead of `instance_type`).
- Document the option in the README.md file.

## Testing

All branch pushes and pull requests are tested on
[GitHub Workflows](https://github.com/locp/ansible-role-cassandra/actions).
The primary test framework is
[Ansible Molecule](https://molecule.readthedocs.io/en/latest/).

There are two scenarios tested against, each one involves three nodes
(node0, node1 and node2).  In the
[first scenario](molecule/default),
nodes 0 and 1 create a cluster called *MyCassandraCluster* with node0 as the
seed node.  Node 2 creates a separate cluster called *Standalone* seeding
against itself.  In the
[second scenario](molecule/combine_cluster), node2 is migrated from the
*Standalone* to the *MyCassandraCluster* with node0 remaining as the solitary
seed.

|**Node** | **Scenario 1** | **Scenario 2** |
|----|-------------------|--------------------|
|**node0**|MyCassandraCluster (seed)| MyCassandraCluster (seed)|
|**node1**|MyCassandraCluster | MyCassandraCluster |
|**node2**|Standalone (seed)|MyCassandraCluster|

The verification tests ensure that each node is in the correct cluster
depending on which scenario is being executed.

### Running the Tests Manually

To run the tests manually, select which operating system you want to test
against from the following list:

- CentOS 7
```
COMMAND="/usr/sbin/init" DISTRO="centos" TAG=7 molecule test --destroy never
COMMAND="/usr/sbin/init" DISTRO="centos" TAG=7 molecule test --scenario-name combine_cluster --destroy never
```

- CentOS 8
```
COMMAND="/usr/sbin/init" DISTRO="centos" TAG=8 molecule test --destroy never
COMMAND="/usr/sbin/init" DISTRO="centos" TAG=8 molecule test --scenario-name combine_cluster --destroy never
```

- Debian 10
```
TAG=10 molecule test --destroy never
TAG=10 molecule test --scenario-name combine_cluster --destroy never
```

- Debian 11
```
molecule test --destroy never
molecule test --scenario-name combine_cluster --destroy never
```

- Fedora 33
```
COMMAND="/usr/sbin/init" DISTRO="fedora" TAG=33 molecule test --destroy never
COMMAND="/usr/sbin/init" DISTRO="fedora" TAG=33 molecule test --scenario-name combine_cluster --destroy never
```

- Fedora 34
```
COMMAND="/usr/sbin/init" DISTRO="fedora" TAG=34 molecule test --destroy never
COMMAND="/usr/sbin/init" DISTRO="fedora" TAG=34 molecule test --scenario-name combine_cluster --destroy never
```

- Ubuntu 18.04
```
DISTRO="ubuntu" TAG=18.04 molecule test --destroy never
DISTRO="ubuntu" TAG=18.04 molecule test --scenario-name combine_cluster --destroy never
```

- Ubuntu 20.04
```
DISTRO="ubuntu" TAG=20.04 molecule test --destroy never
DISTRO="ubuntu" TAG=20.04 molecule test --scenario-name combine_cluster --destroy never
```
