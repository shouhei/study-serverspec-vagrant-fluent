require "spec_helper"

describe file('/home/vagrant/.zshrc') do
  it { should be_file }
  its(:content) { should match /export PATH=\"\/usr\/local\/bin:\/bin:\/usr\/bin:\/home\/vagrant\/bin:\/usr\/local\/sbin:\/usr\/sbin:\/sbin\"/ }
  its(:content) { should match /export PATH=\"\$HOME\/\.rbenv\/bin:\$PATH\"/ }
  its(:content) { should match /eval \"\$\(rbenv init -\)\"/ }
  its(:content) { should match /PATH=\"\/usr\/local\/heroku\/bin:\$PATH\"/ }
end
