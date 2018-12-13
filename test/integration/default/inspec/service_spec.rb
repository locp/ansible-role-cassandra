if os.family == 'redhat'
  describe service('cassandra') do
    it { should be_enabled }
    it { should be_running }
    it { should be_installed }
  end
else
  describe upstart_service('cassandra') do
    it { should be_enabled }
    it { should be_running }
    it { should be_installed }
  end
end
