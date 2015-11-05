private
projectNewCheckAndCreatePackage: packageName for: projectEntry mcTool: mcTool force: force
  | matches wc |
  matches := mcTool findMatchingPackages: packageName topez: topez.
  (matches detect: [ :wc | wc packageName = packageName ] ifNone: [ #() ])
    do: [ :pkgName | 
      force
        ifTrue: [ mcTool mcunloadPackageNamed: packageName ]
        ifFalse: [ 
          self
            error:
              'The package: ' , packageName printString
                ,
                  ' already exists. Unload the package or use the --force option' ] ].
  wc := mcTool mccreate: packageName.
  wc modified: true.
  wc repositoryGroup addRepository: projectEntry repository