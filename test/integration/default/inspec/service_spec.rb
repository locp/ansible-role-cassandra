describe service('cassandra') do
  it { should be_enabled }
  it { should be_running }
  it { should be_installed }
end
