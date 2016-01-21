#
# Cookbook Name:: bastion
# Recipe:: default
#
# Copyright (C) 2016 Smart 421 LTD
#
# All rights reserved - Do Not Redistribute
#

yum_package 'kernel' do
  :update
end

yum_package 'openssh-server' do
  :update
end

yum_package 'openssh-clients' do
  :update
end

execute 'install security updates' do
  command 'yum -y update --security'
end

execute 'reboot system if required' do
  command "shutdown -r +1 'System is going to reboot in one minute'"
  only_if '[ -f /var/run/reboot-required ]'
end
