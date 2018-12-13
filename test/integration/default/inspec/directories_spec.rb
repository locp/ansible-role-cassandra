describe file('/data') do
  it { should be_directory }
  its('mode') { should cmp '0755' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/data/cassandra/data') do
  it { should be_directory }
  its('mode') { should cmp '0700' }
  it { should be_owned_by 'cassandra' }
  it { should be_grouped_into 'cassandra' }
end

describe file('/data/cassandra/hints') do
  it { should be_directory }
  its('mode') { should cmp '0700' }
  it { should be_owned_by 'cassandra' }
  it { should be_grouped_into 'cassandra' }
end
