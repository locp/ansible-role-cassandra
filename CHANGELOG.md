# Changelog

## [0.7.1](https://github.com/locp/ansible-role-cassandra/tree/0.7.1) (2019-04-10)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.7.0...0.7.1)

**Ansible Version**

The minimum Ansible version has been bumped from 2.6.0.0 to 2.6.2.0 due to issues found in #45.  Specifically that version of Ansible did not work so well with Molecule (ansible/ansible#42118).

**Fixed bugs:**

- TravisCI Builds Failing on Latest Component Versions [\#45](https://github.com/locp/ansible-role-cassandra/issues/45)
- Improve the Documentation [\#43](https://github.com/locp/ansible-role-cassandra/issues/43)
- Fedora needs to use Python 3 [\#41](https://github.com/locp/ansible-role-cassandra/issues/41)
- Travis Lint Giving Warnings/Errors [\#39](https://github.com/locp/ansible-role-cassandra/issues/39)

## [0.7.0](https://github.com/locp/ansible-role-cassandra/tree/0.7.0) (2018-12-21)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.6.0...0.7.0)

**Implemented enhancements:**

- Fedora 27 is no longer supported [\#35](https://github.com/locp/ansible-role-cassandra/issues/35)
- Optimise Integration Tests on TravisCI. [\#34](https://github.com/locp/ansible-role-cassandra/pull/34) ([dallinb](https://github.com/dallinb))
- Feature/centos rpm install [\#33](https://github.com/locp/ansible-role-cassandra/pull/33) ([dallinb](https://github.com/dallinb))
- Feature/community [\#32](https://github.com/locp/ansible-role-cassandra/pull/32) ([dallinb](https://github.com/dallinb))

**Fixed bugs:**

- Latest version of Ansible Lint \(4.0.0\) Failing Tests [\#38](https://github.com/locp/ansible-role-cassandra/issues/38)

## [0.6.0](https://github.com/locp/ansible-role-cassandra/tree/0.6.0) (2018-11-06)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.5.0...0.6.0)

**Implemented enhancements:**

- Add Support for Ubuntu 18:04 [\#30](https://github.com/locp/ansible-role-cassandra/issues/30)

## [0.5.0](https://github.com/locp/ansible-role-cassandra/tree/0.5.0) (2018-10-04)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.4.4...0.5.0)

**Implemented enhancements:**

- Give the Custom Facts Tasks More Meaningful Names [\#29](https://github.com/locp/ansible-role-cassandra/issues/29)

**Fixed bugs:**

- Cassandra Package Not Being Installed on Fedora 27 With Ansible 2.7.0 [\#28](https://github.com/locp/ansible-role-cassandra/issues/28)

## [0.4.4](https://github.com/locp/ansible-role-cassandra/tree/0.4.4) (2018-09-14)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.4.3...0.4.4)

**Implemented enhancements:**

- Update Tools Versions [\#26](https://github.com/locp/ansible-role-cassandra/issues/26)
- Test Against Fedora 27 and Python 3 [\#23](https://github.com/locp/ansible-role-cassandra/issues/23)

**Fixed bugs:**

- Ansible Galaxy Import Errors and Warning [\#25](https://github.com/locp/ansible-role-cassandra/issues/25)

**Merged pull requests:**

- Add Ansible Review to the Tests [\#27](https://github.com/locp/ansible-role-cassandra/pull/27) ([dallinb](https://github.com/dallinb))
- Test Against Fedora 27 and Python 3 [\#24](https://github.com/locp/ansible-role-cassandra/pull/24) ([dallinb](https://github.com/dallinb))

## [0.4.3](https://github.com/locp/ansible-role-cassandra/tree/0.4.3) (2018-09-12)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.4.2...0.4.3)

**Merged pull requests:**

- Force cassandra directories keys to be list [\#22](https://github.com/locp/ansible-role-cassandra/pull/22) ([jgagnon1](https://github.com/jgagnon1))

## [0.4.2](https://github.com/locp/ansible-role-cassandra/tree/0.4.2) (2018-09-08)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.4.1...0.4.2)

**Ansible Version**

The minimum supported Ansible version was bumped from 2.2.0.0 to 2.3.1.0 (see #19) and subsequently to 2.6.0.0 (see #20).

**Fixed bugs:**

- Removal of accidental release 4.0.1 \(was supposed to be 0.4.1\). [\#20](https://github.com/locp/ansible-role-cassandra/issues/20)
- Update for CVE-2017-7481 [\#19](https://github.com/locp/ansible-role-cassandra/issues/19)

**Merged pull requests:**

- Hotfix/0.4.2 [\#21](https://github.com/locp/ansible-role-cassandra/pull/21) ([dallinb](https://github.com/dallinb))

## [0.4.1](https://github.com/locp/ansible-role-cassandra/tree/0.4.1) (2018-07-27)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.4.0...0.4.1)

**Fixed bugs:**

- The name in the final task in main.yml needs to be qualified [\#18](https://github.com/locp/ansible-role-cassandra/issues/18)
- Remove bling from README. [\#17](https://github.com/locp/ansible-role-cassandra/issues/17)

## [0.4.0](https://github.com/locp/ansible-role-cassandra/tree/0.4.0) (2018-05-18)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.3.0...0.4.0)

**Implemented enhancements:**

- As a user, I should be able to specify data directories... [\#15](https://github.com/locp/ansible-role-cassandra/issues/15)

**Fixed bugs:**

- Java Custom Facts Using Incorrect Metric [\#16](https://github.com/locp/ansible-role-cassandra/issues/16)

## [0.3.0](https://github.com/locp/ansible-role-cassandra/tree/0.3.0) (2018-05-16)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.2.3...0.3.0)

**Implemented enhancements:**

- Custom Facts For Max Heap Size and Heap New Size [\#14](https://github.com/locp/ansible-role-cassandra/issues/14)

## [0.2.3](https://github.com/locp/ansible-role-cassandra/tree/0.2.3) (2018-05-14)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.2.2...0.2.3)

**Fixed bugs:**

- Error installing 0.2.2 of the module from Galaxy. [\#13](https://github.com/locp/ansible-role-cassandra/issues/13)

## [0.2.2](https://github.com/locp/ansible-role-cassandra/tree/0.2.2) (2018-05-13)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.2.1...0.2.2)

**Fixed bugs:**

- The comment in the Cassandra Configuration File Should Use ansible\_managed [\#12](https://github.com/locp/ansible-role-cassandra/issues/12)
- Link to License Must Refer to Git Hub [\#11](https://github.com/locp/ansible-role-cassandra/issues/11)

## [0.2.1](https://github.com/locp/ansible-role-cassandra/tree/0.2.1) (2018-05-12)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.2.0...0.2.1)

**Fixed bugs:**

- Documentation Rendering Sucks in Ansible Galaxy [\#10](https://github.com/locp/ansible-role-cassandra/issues/10)

## [0.2.0](https://github.com/locp/ansible-role-cassandra/tree/0.2.0) (2018-05-12)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.1.0...0.2.0)

**Implemented enhancements:**

- As a user, I should be able to deploy onto the Debian OS family, [\#4](https://github.com/locp/ansible-role-cassandra/issues/4)

**Fixed bugs:**

- As a system test, it should be checked that the cluster name is set correctly [\#9](https://github.com/locp/ansible-role-cassandra/issues/9)

## [0.1.0](https://github.com/locp/ansible-role-cassandra/tree/0.1.0) (2018-05-11)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/abf7ee81bc84ecde91a3205900c58edf3ededfb6...0.1.0)

**Implemented enhancements:**

- Documentation [\#8](https://github.com/locp/ansible-role-cassandra/issues/8)
- As a user, I should be able to know that the service will be handled correctly, [\#7](https://github.com/locp/ansible-role-cassandra/issues/7)
- As a user, I should be able to specify the nodes data centre and rack, [\#6](https://github.com/locp/ansible-role-cassandra/issues/6)
- As a user, I should be able to specify the Cassandra configuration, [\#5](https://github.com/locp/ansible-role-cassandra/issues/5)
- As a user, I should be able to specify the name and version of the Cassandra Package [\#3](https://github.com/locp/ansible-role-cassandra/issues/3)
- As a user, I should be able to install the Apache Cassandra Repositories, [\#2](https://github.com/locp/ansible-role-cassandra/issues/2)
- As a role developer, my code should be generated by ansible-galaxy, [\#1](https://github.com/locp/ansible-role-cassandra/issues/1)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
