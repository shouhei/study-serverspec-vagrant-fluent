require "spec_helper"

describe file('/usr/local/fluent-agent-lite') do
  it { should be_directory }
end

describe file('/usr/local/fluent-agent-lite/bin/fluent-agent-lite') do
  it { should be_file }
  it { should be_executable }
end

describe service('fluent-agent-lite') do
  it { should be_enabled }
  it { should be_running }
end

