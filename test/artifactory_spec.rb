require_relative 'spec_helper'

describe service('artifactory') do
 it { should be_enabled }
 it { should be_running }
end

describe file('/etc/opt/jfrog/artifactory') do
  it { should be_directory }
end

describe file('/opt/artifactory-pro-6.5.2/etc/artifactory.lic') do
 it { should exist}
end

describe file('/opt/artifactory-pro-6.5.2') do
  it { should be_owned_by 'artifactory' }
end

describe group('artifactory') do
  it { should exist }
end

describe user('artifactory') do
  it { should belong_to_group 'artifactory' }
  it { should exist }
end

describe yumrepo('epel') do
  it { should exist }
end

describe port(8081) do
  it { should be_listening }
end

