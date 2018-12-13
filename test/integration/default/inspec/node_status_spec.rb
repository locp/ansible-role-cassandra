@ip = command('hostname -I').stdout.strip

describe command('nodetool status') do
  its('stdout') { should match(/^UN.*#{@ip}/) }
end
