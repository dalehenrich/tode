browse
browsePackages
  TDPackageList reset.
  ^ self
    browseDefinitionListBlock: [ TDPackageList current ]
    selectedIndex: 0
    label: 'Packages'