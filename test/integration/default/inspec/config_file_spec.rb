config_file = if os.family == 'redhat'
                '/etc/cassandra/conf/cassandra.yaml'
              else
                '/etc/cassandra/cassandra.yaml'
              end

describe file(config_file) do
  it { should be_file }
  it { should contain 'cluster_name: MyCassandraCluster' }
end
