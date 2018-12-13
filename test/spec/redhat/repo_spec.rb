describe 'Red Hat Yum Repo' do
  describe yumrepo('cassandra') do
    it { should exist }
    it { should be_enabled }
  end
end
