as yet unclassified
modifyConiguration: configurationClass version: versionString newVersionsMap: newVersionsMap
  (MetacelloToolBox configurationNamed: configurationClass name asString)
    updateVersionMethodForVersion: versionString
      projectAttributes: self orderedAttributeList
      updateProjects: false
      updatePackages: false
      versionSpecsDo: [ :attribute :versionSpec | 
        | newVersions versionAttribute |
        versionAttribute := self attributeMap at: attribute ifAbsent: [  ].
        versionAttribute notNil
          ifTrue: [ 
            newVersions := newVersionsMap at: versionAttribute ifAbsent: [  ].
            newVersions notNil
              ifTrue: [ 
                newVersions
                  do: [ :version | 
                    | packageSpec |
                    packageSpec := versionSpec packages
                      specListDetect: [ :spec | spec name = version package name ]
                      ifNone: [  ].
                    packageSpec file: version info name ] ] ].
        true ];
    commitMethod