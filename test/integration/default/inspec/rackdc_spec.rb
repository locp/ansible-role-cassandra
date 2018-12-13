rackdc_file = if os.family == 'redhat'
                '/etc/cassandra/conf/cassandra.yaml'
              else
                '/etc/cassandra/cassandra.yaml'
              end

describe file(rackdc_file) do
  it { should be_file }
  it { should contain 'dc=DC1' }
  it { should contain 'rack=RACK1' }
end
