require_relative '../spec_helper'

describe 'Common Check Cluster Name' do
  @script = 'SELECT cluster_name FROM local;'
  @creds = '-u cassandra -p cassandra'
  @cqlsh = 'cqlsh $( hostname -i ) -k system'

  describe command("#{@cqlsh} #{@creds} -e '#{@script}'") do
    its(:stdout) { should match(/MyCassandraCluster/) }
  end
end
