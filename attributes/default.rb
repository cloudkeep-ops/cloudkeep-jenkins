normal['node_group']['tag'] = 'jenkins'

normal['base']['dns']['ip'] = node['ipaddress']

normal['java']['jdk_version'] = '7'

normal['openssh']['server']['allow_agent_forwarding'] = 'yes'
normal['openssh']['server']['allow_groups'] = ['lnx-cloud-barbican-developers','lnx-cloud-barbican-engineer','jenkins']
