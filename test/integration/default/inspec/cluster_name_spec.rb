@script = 'SELECT cluster_name FROM local;'
@creds = '-u cassandra -p cassandra'
@ip = command('hostname -I').stdout.strip
@cqlsh = "cqlsh #{@ip} -k system"

describe command("#{@cqlsh} #{@creds} -e '#{@script}'") do
  its('stdout') { should match(/MyCassandraCluster/) }
end
