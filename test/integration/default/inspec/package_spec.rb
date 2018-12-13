describe 'Common Package' do
  describe package('cassandra') do
    it { should be_installed }
  end
end
