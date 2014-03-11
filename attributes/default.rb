normal['node_group']['tag'] = 'jenkins'
normal['base']['dns']['ip'] = node['ipaddress']
normal['openssh']['server']['allow_agent_forwarding'] = 'yes'
normal['openssh']['server']['allow_groups'] = ['lnx-cloud-barbican-developers','lnx-cloud-barbican-engineer','jenkins']
