require_relative '../spec_helper'

describe 'Common Directories' do
  describe file('/data') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  describe file('/data/cassandra/data') do
    it { should be_directory }
    it { should be_mode 700 }
    it { should be_owned_by 'cassandra' }
    it { should be_grouped_into 'cassandra' }
  end

  describe file('/data/cassandra/hints') do
    it { should be_directory }
    it { should be_mode 700 }
    it { should be_owned_by 'cassandra' }
    it { should be_grouped_into 'cassandra' }
  end
end
