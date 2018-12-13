require_relative '../spec_helper'

describe 'Common Service' do
  describe service('cassandra') do
    it { should be_enabled }
    it { should be_running }
  end
end
