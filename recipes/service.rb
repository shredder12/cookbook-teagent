#
### Cookbook Name:: teagent
### Recipe:: service
##
#
# Copyright © 2013 ThousandEyes, Inc.
#

service 'te-agent' do
    case node['platform']
    when 'redhat','centos','ubuntu'
        provider Chef::Provider::Service::Upstart
        supports [:restart, :status]
    when 'debian'
        pattern 'te-agent'
        supports [:restart]
    end
    #supports [:restart, :status]
    action [:start, :enable]
end

