require 'spec_helper'

versions = %w(2.2.3)

describe file('/home/vagrant/.rbenv') do
  it { should be_directory }
end

describe file('/home/vagrant/.rbenv/shims/ruby') do
  it { should be_file }
  it { should be_executable }
end

describe file('/home/vagrant/.rbenv/version') do
  it { should be_file }
  its(:content) { should match '2.2.3' }
end


versions.each do |version|
  describe file("/home/vagrant/.rbenv/versions/#{version}") do
    it { should be_directory }
  end
  describe file("/home/vagrant/.rbenv/versions/#{version}/bin/ruby") do
    it { should be_executable }
  end
  describe file("/home/vagrant/.rbenv/versions/#{version}/bin/irb") do
    it { should be_executable }
  end
  describe file("/home/vagrant/.rbenv/versions/#{version}/bin/gem") do
    it { should be_executable }
  end
  describe file("/home/vagrant/.rbenv/versions/#{version}/bin/irb") do
    it { should be_executable }
  end
end
