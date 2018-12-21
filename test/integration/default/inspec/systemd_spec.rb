if os.name == 'fedora'
  describe file('/etc/systemd/system/cassandra.service') do
    it { should exist }
  end
else
  describe file('/etc/systemd/system/cassandra.service') do
    it { should_not exist }
  end
end
