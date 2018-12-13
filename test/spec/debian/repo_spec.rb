describe 'Debian Apt Repo' do
  describe file('/etc/apt/sources.list.d/cassandra.sources.list') do
    it { should exist }
    it { should be_file }
  end
end
