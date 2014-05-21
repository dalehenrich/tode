browse
browseConfigurations
  TDConfigurationList reset.
  ^ self
    browseDefinitionListBlock: [ TDConfigurationList current ]
    selectedIndex: 0
    label: 'Configurations'