if os.family == 'debian'
  describe file('/etc/apt/sources.list.d/cassandra.sources.list') do
    it { should exist }
    it { should be_file }
  end
else
  describe yum.repo('cassandra') do
    it { should exist }
    it { should be_enabled }
  end
end
