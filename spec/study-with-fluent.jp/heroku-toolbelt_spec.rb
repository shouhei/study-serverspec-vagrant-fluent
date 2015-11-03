require "spec_helper"

describe file('/home/vagrant/.heroku') do
  it { should be_directory }
end

describe file('/home/vagrant/.heroku/heroku-cli') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/heroku/bin/heroku') do
  it { should be_file }
  it { should be_executable }
end
