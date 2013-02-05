as yet unclassified
updatePackageAndConfigFor: packageName topez: topez
  | pkgs pkgDef configs selectedIndex |
  pkgs := TDPackageList current.
  pkgDef := pkgs definitionList detect: [ :def | self category: packageName matches: def packageName ] ifNone: [ nil ].
  selectedIndex := pkgs definitionList indexOf: pkgDef.
  selectedIndex == pkgs selectedIndex
    ifFalse: [ 
      pkgs selectedIndex: (pkgs definitionList indexOf: pkgDef).
      pkgs edit: topez ].
  configs := TDConfigurationList current