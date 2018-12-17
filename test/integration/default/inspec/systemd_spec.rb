if os.name == 'fedora'
  describe file('/usr/lib/systemd/system/cassandra.service') do
    it { should exist }
  end
else
  describe file('/usr/lib/systemd/system/cassandra.service') do
    it { should_not exist }
  end
end
