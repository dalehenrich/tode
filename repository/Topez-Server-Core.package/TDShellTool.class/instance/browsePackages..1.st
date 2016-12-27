browse
browsePackages
  TDPackageList reset.
  ^ self
    browseDefinitionListBlock: [ self findPackages ]
    selectedIndex: 0
    label: 'Packages'