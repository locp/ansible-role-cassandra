Feature: Test Cassandra
  Scenario: Check the Cassandra Service and Package
    Given the host with URL "docker://node0" is ready
    When the service is cassandra
    And the package is cassandra
    Then the service is enabled
    And the service is running
    And the package is installed

  Scenario Outline: Custom Directories
    Given the host with URL "docker://node0" is ready
    When the file is <dirname>
    Then the file is present
    And the file type is directory
    And the file owner is <user>
    And the file group is <group>
    And the file mode is <mode>
    Examples:
      | dirname               | user      | group     | mode  |
      | /data                 | root      | root      | 0o755 |
      | /data/cassandra/data  | cassandra | cassandra | 0o700 |
      | /data/cassandra/hints | cassandra | cassandra | 0o700 |

  Scenario Outline: Check that a File Contains an Expected String
    Given the host with URL "docker://node0" is ready
    When the system property distribution is not <distribution> skip tests
    And the file is <file_name>
    Then the file is present
    And the file contents contains "<pattern>"
    Examples:
      | distribution | file_name                                               | pattern              |
      | centos       | /etc/cassandra/default.conf/cassandra-env.sh            | MAX_HEAP_SIZE="256M" |
      | centos       | /etc/cassandra/default.conf/cassandra-rackdc.properties | dc=DC1               |
      | centos       | /etc/cassandra/default.conf/cassandra-rackdc.properties | rack=RACK1           |
      | debian       | /etc/cassandra/cassandra-env.sh                         | MAX_HEAP_SIZE="256M" |
      | debian       | /etc/cassandra/cassandra-rackdc.properties              | dc=DC1               |
      | debian       | /etc/cassandra/cassandra-rackdc.properties              | rack=RACK1           |
      | fedora       | /etc/cassandra/default.conf/cassandra-env.sh            | MAX_HEAP_SIZE="256M" |
      | fedora       | /etc/cassandra/default.conf/cassandra-rackdc.properties | dc=DC1               |
      | fedora       | /etc/cassandra/default.conf/cassandra-rackdc.properties | rack=RACK1           |
      | ubuntu       | /etc/cassandra/cassandra-env.sh                         | MAX_HEAP_SIZE="256M" |
      | ubuntu       | /etc/cassandra/cassandra-rackdc.properties              | dc=DC1               |
      | ubuntu       | /etc/cassandra/cassandra-rackdc.properties              | rack=RACK1           |

  Scenario Outline: Check that a file exists and matches an expected type
    Given the host with URL "docker://node0" is ready
    When the system property distribution is not <distribution> skip tests
    And the file is <file_name>
    Then the file is present
    And the file type is <type>
    Examples:
      | distribution | file_name                                  | type |
      | centos       | /etc/cassandra/default.conf/cassandra.yaml | file |
      | debian       | /etc/cassandra/cassandra.yaml              | file |
      | fedora       | /etc/cassandra/default.conf/cassandra.yaml | file |
      | ubuntu       | /etc/cassandra/cassandra.yaml              | file |

  Scenario: Run the nodetool command
    Given the host with URL "docker://node0" is ready
    When the command is "nodetool status"
    Then the command stdout contains "Datacenter: DC1"
    And the command stdout contains the regex ".*UN.*RACK1.*"
