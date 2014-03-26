#
# Cookbook Name:: cloudkeep-jenkins
# Recipe:: rpmbuild
#
# Copyright (C) 2014 Rackspace, US Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'cloudkeep-jenkins::_base'

%w{ expect python2-devel rpm-build }.each do |pkg|
  package pkg
end

# TODO(dmend): Automate adding GPG key

gpg = data_bag_item(node.chef_environment, 'gpg') 

template '/var/lib/jenkins/.rpmmacros' do
  source 'rpmmacros.erb'
  mode 0600
  owner 'jenkins'
  group 'jenkins'
  variables ({
    :key_id => gpg['key_id']
  })
end
