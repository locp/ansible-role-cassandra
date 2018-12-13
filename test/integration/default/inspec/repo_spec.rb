if os.family == 'redhat'
  describe yumrepo('cassandra') do
    it { should exist }
    it { should be_enabled }
  end
else
  describe file('/etc/apt/sources.list.d/cassandra.sources.list') do
    it { should exist }
    it { should be_file }
  end
end
