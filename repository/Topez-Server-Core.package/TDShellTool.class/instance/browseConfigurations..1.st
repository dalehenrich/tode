browse
browseConfigurations
  TDConfigurationList reset.
  ^ self
    browseDefinitionListBlock: [ self findconfigurations ]
    selectedIndex: 0
    label: 'Configurations'