# Changelog


## 1.18.2

### Fix

* Set min_ansible_version to 2.14.0. [Ben Dalling]

* Fix Jinja code formatting (lint errors). [Ben Dalling]

* Ensure all tasks are named in tasks/main.yml. [Ben Dalling]

* Refactor the name of the Cassandra Restart Service handler name. [Ben Dalling]

### Other

* Build(deps): bump mako from 1.2.0 to 1.2.2. [dependabot[bot]]

  Bumps [mako](https://github.com/sqlalchemy/mako) from 1.2.0 to 1.2.2.
  - [Release notes](https://github.com/sqlalchemy/mako/releases)
  - [Changelog](https://github.com/sqlalchemy/mako/blob/main/CHANGES)
  - [Commits](https://github.com/sqlalchemy/mako/commits)

  ---
  updated-dependencies:
  - dependency-name: mako
    dependency-type: direct:production
  ...


## 1.18.1 (2022-08-25)

### Changes

* Migrate to testinfra-bdd 2.0.0. [Ben Dalling]

### Fix

* Change apache package repository URLs to new location (CASSANDRA-17748) [Hauke Hans]

* Disable testing against CentOS 7. [Ben Dalling]

* Correct Lint errors in metadata file. [Ben Dalling]


## 1.18.0 (2022-07-17)

### New

* Add Ubuntu Jammy to the supported platforms. [Ben Dalling]

* Add test to ensure defined platforms are supported by Ansible Galaxy. [Ben Dalling]

### Other

* Build(deps): bump cookiecutter from 1.7.3 to 2.1.1. [dependabot[bot]]

  Bumps [cookiecutter](https://github.com/cookiecutter/cookiecutter) from 1.7.3 to 2.1.1.
  - [Release notes](https://github.com/cookiecutter/cookiecutter/releases)
  - [Changelog](https://github.com/cookiecutter/cookiecutter/blob/master/HISTORY.md)
  - [Commits](https://github.com/cookiecutter/cookiecutter/compare/1.7.3...2.1.1)

  ---
  updated-dependencies:
  - dependency-name: cookiecutter
    dependency-type: direct:production
  ...


## 1.17.0 (2022-05-28)

### New

* Update latest Ubuntu for Jammy Jellyfish. [Ben Dalling]

### Changes

* Migrate installation to Cassandra 4. [Ben Dalling]

* Reflect in Meta file that we have tested against Fedora 36. [Ben Dalling]

* Bump min_ansible_version from 2.11.6 to 2.12.6. [Ben Dalling]

### Fix

* Exclude 3rd party roles from ansible-lint. [Ben Dalling]

* Update CONTRIBUTING.md to reflect no more TravisCI and "dead" branch names. [Ben Dalling]


## 1.16.14 (2022-04-04)

### Changes

* Update metadata now that we have tested against Fedora 35. [Ben Dalling]

* Update the Python packages. [Ben Dalling]

### Fix

* Fully qualify the collection name for builtin actions. [Ben Dalling]

### Other

* Build(deps): bump paramiko from 2.8.0 to 2.10.1. [dependabot[bot]]

  Bumps [paramiko](https://github.com/paramiko/paramiko) from 2.8.0 to 2.10.1.
  - [Release notes](https://github.com/paramiko/paramiko/releases)
  - [Changelog](https://github.com/paramiko/paramiko/blob/main/NEWS)
  - [Commits](https://github.com/paramiko/paramiko/compare/2.8.0...2.10.1)

  ---
  updated-dependencies:
  - dependency-name: paramiko
    dependency-type: direct:production
  ...


## 1.16.3 (2022-02-08)

### New

* Add GitHub Workflow bling to README.md. [Ben Dalling]

### Fix

* Migrate from CenOS 8 to 8Stream. [Ben Dalling]

### Other

* Typo fix for 'mode' [fidanf]


## 1.6.12 (2022-01-13)

### Fix

* Correct distro details when testing latest versions. [Ben Dalling]

### Other

* Fix for not defined cassandra_directories. [joannakotula]

  When not defining 'cassandra_directories' got error:
  FAILED! => {"msg": "dict2items requires a dictionary, got <class 'ansible.template.AnsibleUndefined'> instead."}


## 1.6.11 (2021-11-14)

### New

* Add testing against Debian 11 (bullseye). [Ben Dalling]

### Changes

* Update min_ansible_version to 2.11.6. [Ben Dalling]

* Replace deprecated configuration variables in Molecule configuration. [Ben Dalling]

### Fix

* Ensure Fedora 33 & 34 is in the metadata. [Ben Dalling]

* Ensure tests run against Debian 11. [Ben Dalling]

### Other

* Build(deps): bump ansible from 2.10.7 to 4.2.0. [dependabot[bot]]

  Bumps [ansible](https://github.com/ansible/ansible) from 2.10.7 to 4.2.0.
  - [Release notes](https://github.com/ansible/ansible/releases)
  - [Commits](https://github.com/ansible/ansible/commits)

  ---
  updated-dependencies:
  - dependency-name: ansible
    dependency-type: direct:production
  ...


## 1.6.10

### Other

* FIXED Add apache apt keys. [Tobias Loeb]

## 1.6.9

### Fix

* Skip test that we are running against the latest distro. [Ben Dalling]

* Change J2 template to work with Ansible 4. [Ben Dalling]

* Bump min_ansible_version from 2.10.0 to 2.10.7. [Ben Dalling]

### Other

* Build(deps): bump ansible from 2.10.0 to 2.10.7. [dependabot[bot]]

  Bumps [ansible](https://github.com/ansible/ansible) from 2.10.0 to 2.10.7.
  - [Release notes](https://github.com/ansible/ansible/releases)
  - [Commits](https://github.com/ansible/ansible/compare/v2.10.0...v2.10.7)

  ---
  updated-dependencies:
  - dependency-name: ansible
    dependency-type: direct:production
  ...

* Build(deps): bump urllib3 from 1.26.4 to 1.26.5. [dependabot[bot]]

  Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.4 to 1.26.5.
  - [Release notes](https://github.com/urllib3/urllib3/releases)
  - [Changelog](https://github.com/urllib3/urllib3/blob/main/CHANGES.rst)
  - [Commits](https://github.com/urllib3/urllib3/compare/1.26.4...1.26.5)

  ---
  updated-dependencies:
  - dependency-name: urllib3
    dependency-type: direct:production
  ...


## 1.6.8

### Fix

* Document the deprecation of cassandra_path. [Ben Dalling]

* Bump minimum Ansible version to 2.10.9. [Ben Dalling]

* Resolve Ansible lint errors in metadata. [Ben Dalling]

* Flag cassandra_path as deprecated. [Ben Dalling]

* CASSANDRA-2356 and code refactor. [nkakouros]

### Other

* Build(deps): bump urllib3 from 1.26.3 to 1.26.4. [dependabot[bot]]

  Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.3 to 1.26.4.
  - [Release notes](https://github.com/urllib3/urllib3/releases)
  - [Changelog](https://github.com/urllib3/urllib3/blob/main/CHANGES.rst)
  - [Commits](https://github.com/urllib3/urllib3/compare/1.26.3...1.26.4)

* Build(deps): bump pyyaml from 5.3.1 to 5.4. [dependabot[bot]]

  Bumps [pyyaml](https://github.com/yaml/pyyaml) from 5.3.1 to 5.4.
  - [Release notes](https://github.com/yaml/pyyaml/releases)
  - [Changelog](https://github.com/yaml/pyyaml/blob/master/CHANGES)
  - [Commits](https://github.com/yaml/pyyaml/compare/5.3.1...5.4)

* Build(deps): bump urllib3 from 1.26.2 to 1.26.3. [dependabot[bot]]

  Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.2 to 1.26.3.
  - [Release notes](https://github.com/urllib3/urllib3/releases)
  - [Changelog](https://github.com/urllib3/urllib3/blob/main/CHANGES.rst)
  - [Commits](https://github.com/urllib3/urllib3/compare/1.26.2...1.26.3)

* Build(deps): bump jinja2 from 2.11.2 to 2.11.3. [dependabot[bot]]

  Bumps [jinja2](https://github.com/pallets/jinja) from 2.11.2 to 2.11.3.
  - [Release notes](https://github.com/pallets/jinja/releases)
  - [Changelog](https://github.com/pallets/jinja/blob/master/CHANGES.rst)
  - [Commits](https://github.com/pallets/jinja/compare/2.11.2...2.11.3)


## 1.6.7 (2021-02-13)

### Fix

* Ansible Galaxy still not acknowledging Fedora 33. Related to #106. [Ben Dalling]

* Correct path names when clearing data as part of a cluster rejoin. This partially resolves some of the issues raised in #116. [Ben Dalling]

* Clarify the effect of cassandra_join_cluster on cassandra_directories. [Ben Dalling]


## 1.6.6 (2021-02-10)

### Fix

* Add GPG key F1000962B7F6840C for Debian. [Ben Dalling]

* Ensure Python packages are cached in GitHub workflows. [Ben Dalling]

* Ensure role is published to Ansible Galaxy. [Ben Dalling]

### Other

* Revert metadata (Fedora-33). [Ben Dalling]

* Build(deps): bump cryptography from 3.3.1 to 3.3.2. [dependabot[bot]]

  Bumps [cryptography](https://github.com/pyca/cryptography) from 3.3.1 to 3.3.2.
  - [Release notes](https://github.com/pyca/cryptography/releases)
  - [Changelog](https://github.com/pyca/cryptography/blob/master/CHANGELOG.rst)
  - [Commits](https://github.com/pyca/cryptography/compare/3.3.1...3.3.2)


## 1.6.5 (2020-12-28)

### New

* Implement the gitchangelog Python package. [Ben Dalling]

* Migrate latest checks from TravisCI to GitHub workflows. [Ben Dalling]

* Start migration from TravisCI to GitHub Workflow. [Ben Dalling]

### Fix

* Reduce duplicated templates for Systemd. [Ben Dalling]

* Resolve issues with new testinfra version. [Ben Dalling]

* Ensure testing against latest Python packages. [Ben Dalling]


## [1.6.4](https://github.com/locp/ansible-role-cassandra/tree/1.6.4) (2020-10-30)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.6.3...1.6.4)

**Fixed bugs:**

- New Version of Fedora \(33\) Breaking on Latest Branch [\#105](https://github.com/locp/ansible-role-cassandra/issues/105)

## [1.6.3](https://github.com/locp/ansible-role-cassandra/tree/1.6.3) (2020-10-19)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.6.2...1.6.3)

**Fixed bugs:**

- Builds Failing on TravisCI [\#102](https://github.com/locp/ansible-role-cassandra/issues/102)
- Release/1.6.3 [\#103](https://github.com/locp/ansible-role-cassandra/pull/103) ([dallinb](https://github.com/dallinb))

## [1.6.2](https://github.com/locp/ansible-role-cassandra/tree/1.6.2) (2020-10-11)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.6.1...1.6.2)

**Fixed bugs:**

- Builds on Latest Branch Failing [\#101](https://github.com/locp/ansible-role-cassandra/issues/101)

## [1.6.1](https://github.com/locp/ansible-role-cassandra/tree/1.6.1) (2020-08-06)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.6.0...1.6.1)

**Fixed bugs:**

- Reimport of Role to Ansible Galaxy Has Renamed the Role [\#98](https://github.com/locp/ansible-role-cassandra/issues/98)

**Merged pull requests:**

- Release 1.6.1. [\#100](https://github.com/locp/ansible-role-cassandra/pull/100) ([dallinb](https://github.com/dallinb))

## [1.6.0](https://github.com/locp/ansible-role-cassandra/tree/1.6.0) (2020-08-05)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.5.1...1.6.0)

**Implemented enhancements:**

- Add New Variables For Memory Usage and CPU Utilisation [\#91](https://github.com/locp/ansible-role-cassandra/issues/91)
- Add New Variables For Memory Usage and CPU Utilisation v1.6.0 [\#96](https://github.com/locp/ansible-role-cassandra/pull/96) ([dallinb](https://github.com/dallinb))

## [1.5.1](https://github.com/locp/ansible-role-cassandra/tree/1.5.1) (2020-08-04)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.5.0...1.5.1)

Many thanks to @aijanai for raising #93 and for his suggestions to improve the documentation to resolve the issue.


**Implemented enhancements:**

- Reintroduce Regular Builds Against Latest Versions [\#87](https://github.com/locp/ansible-role-cassandra/issues/87)
- Improve Testing Against Latest Versions. [\#92](https://github.com/locp/ansible-role-cassandra/pull/92) ([dallinb](https://github.com/dallinb))

**Fixed bugs:**

- Sample playbook makes nodes seed onto themselves only and cluster never forms [\#93](https://github.com/locp/ansible-role-cassandra/issues/93)

**Merged pull requests:**

- Example Playbook Update [\#94](https://github.com/locp/ansible-role-cassandra/pull/94) ([dallinb](https://github.com/dallinb))

## [1.5.0](https://github.com/locp/ansible-role-cassandra/tree/1.5.0) (2020-08-01)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.4.0...1.5.0)

**Implemented enhancements:**

- Support Fedora 32 [\#88](https://github.com/locp/ansible-role-cassandra/issues/88)

**Fixed bugs:**

- Previously Working Molecule Tests Now Failing [\#89](https://github.com/locp/ansible-role-cassandra/issues/89)

**Merged pull requests:**

- Fix broken CI tests and add support for Fedora 32. [\#90](https://github.com/locp/ansible-role-cassandra/pull/90) ([dallinb](https://github.com/dallinb))

## [1.4.0](https://github.com/locp/ansible-role-cassandra/tree/1.4.0) (2020-06-22)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.3.0...1.4.0)

**Implemented enhancements:**

- Changes for joining an existing cluster [\#79](https://github.com/locp/ansible-role-cassandra/pull/79) ([DEvil0000](https://github.com/DEvil0000))

## [1.3.0](https://github.com/locp/ansible-role-cassandra/tree/1.3.0) (2020-05-19)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.2.2...1.3.0)

**Implemented enhancements:**

- Make package installation optional [\#80](https://github.com/locp/ansible-role-cassandra/pull/80) ([DEvil0000](https://github.com/DEvil0000))
- Add the cassandra\_regex\_replacements variable. [\#83](https://github.com/locp/ansible-role-cassandra/pull/83) ([dallinb](https://github.com/dallinb))

**Fixed bugs:**

- Fix Tests for Debian 10 & Ubuntu 20.04 \(Cassandra Restart\) [\#85](https://github.com/locp/ansible-role-cassandra/issues/85)
- Bump Minimum Ansible Version from 2.8.8 to 2.9.1 [\#84](https://github.com/locp/ansible-role-cassandra/issues/84)
- Simplify the Molecule Testing [\#81](https://github.com/locp/ansible-role-cassandra/issues/81)

**Merged pull requests:**

- Bump ansible from 2.9.1 to 2.9.2 [\#86](https://github.com/locp/ansible-role-cassandra/pull/86) ([dependabot[bot]](https://github.com/apps/dependabot))

## [1.2.2](https://github.com/locp/ansible-role-cassandra/tree/1.2.2) (2020-05-03)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.2.1...1.2.2)

**Implemented enhancements:**

- Ubuntu 20:04 \(Focal\) LTS is Available [\#77](https://github.com/locp/ansible-role-cassandra/issues/77)

**Fixed bugs:**

- Ubuntu 20.04 Failing on System Tests [\#78](https://github.com/locp/ansible-role-cassandra/issues/78)

## [1.2.1](https://github.com/locp/ansible-role-cassandra/tree/1.2.1) (2020-03-01)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.2.0...1.2.1)

**Implemented enhancements:**

- Improve how we test against new distros and versions [\#72](https://github.com/locp/ansible-role-cassandra/issues/72)

**Fixed bugs:**

- Builds against latest Ruby Gems and Python Packages Failing [\#75](https://github.com/locp/ansible-role-cassandra/issues/75)
- Drop in Metadata Score at Ansible Galaxy [\#73](https://github.com/locp/ansible-role-cassandra/issues/73)

**Merged pull requests:**

- Bump ansible from 2.8.0 to 2.8.8 [\#76](https://github.com/locp/ansible-role-cassandra/pull/76) ([dependabot[bot]](https://github.com/apps/dependabot))

## [1.2.0](https://github.com/locp/ansible-role-cassandra/tree/1.2.0) (2019-10-23)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.1.0...1.2.0)

**Implemented enhancements:**

- Fedora 31 Scheduled for 2019-10-22 [\#65](https://github.com/locp/ansible-role-cassandra/issues/65)
- Drop support for Fedora 29 and add support for Fedora 31.  Fixes \#65. [\#71](https://github.com/locp/ansible-role-cassandra/pull/71) ([dallinb](https://github.com/dallinb))

**Fixed bugs:**

- Builds failing on TravisCI [\#70](https://github.com/locp/ansible-role-cassandra/issues/70)
- As a CentOS 8 system test... [\#68](https://github.com/locp/ansible-role-cassandra/issues/68)

## [1.1.0](https://github.com/locp/ansible-role-cassandra/tree/1.1.0) (2019-09-30)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.0.3...1.1.0)

**Implemented enhancements:**

- Allow the user to specify retry parameters [\#67](https://github.com/locp/ansible-role-cassandra/issues/67)
- Support for CentOS 8 [\#60](https://github.com/locp/ansible-role-cassandra/issues/60)

## [1.0.3](https://github.com/locp/ansible-role-cassandra/tree/1.0.3) (2019-09-27)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.0.2...1.0.3)

Many thanks to @tkazmierczak-tt for their assistance, clear problem description and prompt replies while fixing #66.

**Fixed bugs:**

- Cassandra startup not waiting for network.target when configured with systemd [\#66](https://github.com/locp/ansible-role-cassandra/issues/66)

## [1.0.2](https://github.com/locp/ansible-role-cassandra/tree/1.0.2) (2019-07-31)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.0.1...1.0.2)

**Fixed bugs:**

- Ansible CVE-2019-10156 \(moderate severity\) [\#64](https://github.com/locp/ansible-role-cassandra/issues/64)
- Tests failing with pytest \>= 5.0.0 [\#63](https://github.com/locp/ansible-role-cassandra/issues/63)

## [1.0.1](https://github.com/locp/ansible-role-cassandra/tree/1.0.1) (2019-06-29)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/1.0.0...1.0.1)

Working on this release have brought the following problems to light:

* Our testing doesn't like PyTest 5 (released halfway through the development of this release).  Suspect that this will be rather easy to fix/workaround though.
* https://issues.apache.org/jira/browse/CASSANDRA-15099 has been raised as a bug for the service implementation on Debian 10 (Buster).  In our test playbook, we have set `cassandra_service_restart` to `False` for that platform.

**Implemented enhancements:**

- Debian 10 \(Buster\) [\#61](https://github.com/locp/ansible-role-cassandra/issues/61)

## [1.0.0](https://github.com/locp/ansible-role-cassandra/tree/1.0.0) (2019-06-22)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.7.4...1.0.0)

**Implemented enhancements:**

- Enrich Testing [\#44](https://github.com/locp/ansible-role-cassandra/issues/44)

**Fixed bugs:**

- Drop in Metadata Score \(5.0 to 4.8\) [\#59](https://github.com/locp/ansible-role-cassandra/issues/59)

## [0.7.4](https://github.com/locp/ansible-role-cassandra/tree/0.7.4) (2019-06-13)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.7.3...0.7.4)

**Implemented enhancements:**

- Fedora 30 scheduled for release 2019-04-30 [\#42](https://github.com/locp/ansible-role-cassandra/issues/42)

**Fixed bugs:**

- Security alerts CVE-2019-10906 and CVE-2017-18342 [\#58](https://github.com/locp/ansible-role-cassandra/issues/58)
- Molecule Tests Failing [\#56](https://github.com/locp/ansible-role-cassandra/issues/56)
- Rubocop 0.69.0 dislikes our code [\#55](https://github.com/locp/ansible-role-cassandra/issues/55)
- \[DEPRECATION WARNING\]: Invoking "apt" only once while using a loop via  squash\_actions is deprecated. [\#54](https://github.com/locp/ansible-role-cassandra/issues/54)
- \[DEPRECATION WARNING\]: Invoking "yum" only once while using a loop via  squash\_actions is deprecated. [\#53](https://github.com/locp/ansible-role-cassandra/issues/53)
- Retire Python 2.7 Support [\#52](https://github.com/locp/ansible-role-cassandra/issues/52)

**Merged pull requests:**

- Bugfix/56 tests failing [\#57](https://github.com/locp/ansible-role-cassandra/pull/57) ([dallinb](https://github.com/dallinb))

## [0.7.3](https://github.com/locp/ansible-role-cassandra/tree/0.7.3) (2019-04-15)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.7.2...0.7.3)

**Ansible Version**

The minimum Ansible version has been bumped from 2.6.2 to 2.6.14 due to CVE-2019-3828 (#50).

**Fixed bugs:**

- CVE-2019-3828 [\#50](https://github.com/locp/ansible-role-cassandra/issues/50)

## [0.7.2](https://github.com/locp/ansible-role-cassandra/tree/0.7.2) (2019-04-12)

[Full Changelog](https://github.com/locp/ansible-role-cassandra/compare/0.7.1...0.7.2)

**Fixed bugs:**

- Example Playbook May Confuse Users [\#48](https://github.com/locp/ansible-role-cassandra/issues/48)

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
