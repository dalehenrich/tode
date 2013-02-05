as yet unclassified
updatePackageAndConfigFor: packageName topez: topez
  | pkgs pkgDef selectedIndex |
  pkgs := TDPackageList current.
  pkgDef := pkgs definitionList detect: [ :def | self category: packageName matches: def packageName ] ifNone: [ nil ].
  selectedIndex := pkgs definitionList indexOf: pkgDef.
  selectedIndex == pkgs selectedIndex
    ifFalse: [ 
      | configs configDef |
      pkgs selectedIndex: selectedIndex.
      pkgs edit: topez.
      configs := TDConfigurationList current.
      pkgDef ~~ nil
        ifTrue: [ 
          configDef := configs definitionList
            detect: [ :def | 
              | version wcs |
              version := def projectSpec version.
              wcs := version packages collect: [ :pkg | pkg workingCopy ].
              (wcs
                detect: [ :wc | 
                  wc == nil
                    ifTrue: [ false ]
                    ifFalse: [ wc packageName = pkgDef packageName ] ]
                ifNone: [  ]) notNil ]
            ifNone: [  ] ].
      selectedIndex := configs definitionList indexOf: configDef.
      selectedIndex == configs selectedIndex
        ifFalse: [ 
          configs selectedIndex: selectedIndex.
          configs edit: topez ] ]