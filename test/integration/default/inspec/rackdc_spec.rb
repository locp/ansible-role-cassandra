rackdc_file = if os.family == 'redhat'
                '/etc/cassandra/default.conf/cassandra-rackdc.properties'
              else
                '/etc/cassandra/cassandra-rackdc.properties'
              end

describe file(rackdc_file) do
  it { should be_file }
  its('content') { should match(/dc=DC1/) }
  its('content') { should match(/rack=RACK1/) }
end
