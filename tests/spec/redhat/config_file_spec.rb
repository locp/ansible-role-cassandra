require_relative '../spec_helper'

describe 'RedHat Configuration File' do
  describe file('/etc/cassandra/conf/cassandra.yaml') do
    it { should be_file }
    it { should contain 'cluster_name: MyCassandraCluster' }
  end
end
