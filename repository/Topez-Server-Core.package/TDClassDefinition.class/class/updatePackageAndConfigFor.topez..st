as yet unclassified
updatePackageAndConfigFor: packageName topez: topez
  | pkgs pkgDef selectedIndex |
  pkgs := TDPackageList current.
  pkgDef := pkgs definitionList
    detect: [ :def | self category: packageName matches: def packageName ]
    ifNone: [ nil ].
  selectedIndex := pkgs definitionList indexOf: pkgDef.
  selectedIndex == pkgs selectedIndex
    ifFalse: [ 
      | configs configDef browseTool |
      browseTool := topez toolInstanceFor: 'browse'.
      browseTool
        browseDefinitionListBlock: [ pkgs ]
        selectedIndex: selectedIndex
        label: 'Packages'.
      configs := TDConfigurationList current.
      configDef := self _configurationGivenPackageDefinition: pkgDef.
      selectedIndex := configs definitionList indexOf: configDef.
      selectedIndex == configs selectedIndex
        ifFalse: [ 
          browseTool
            browseDefinitionListBlock: [ configs ]
            selectedIndex: selectedIndex
            label: 'Configurations' ] ]