rackdc_file = if os.family == 'redhat'
                '/etc/cassandra/conf/cassandra.yaml'
              else
                '/etc/cassandra/cassandra.yaml'
              end

describe file(rackdc_file) do
  it { should be_file }
  its('content') { should match(/dc=DC1/) }
  its('content') { should match(/rack=RACK1/) }
end
