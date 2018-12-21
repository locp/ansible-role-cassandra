config_file = if os.family == 'debian'
                '/etc/cassandra/cassandra.yaml'
              else
                '/etc/cassandra/conf/cassandra.yaml'
              end

describe file(config_file) do
  it { should be_file }
  its('content') { should match(/cluster_name: MyCassandraCluster/) }
end
