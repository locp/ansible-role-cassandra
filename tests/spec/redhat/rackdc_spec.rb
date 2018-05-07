require_relative '../spec_helper'

describe 'Debian Rack/DC Configuration File' do
  describe file('/etc/cassandra/conf/cassandra-rackdc.properties') do
    it { should be_file }
    it { should contain 'dc=DC1' }
    it { should contain 'rack=RACK1' }
  end
end
