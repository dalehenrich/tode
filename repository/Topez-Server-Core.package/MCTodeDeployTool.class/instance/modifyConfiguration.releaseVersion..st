as yet unclassified
modifyConfiguration: configurationClass releaseVersion: versionString
  "set blessing to #release"

  (MetacelloToolBox configurationNamed: configurationClass name asString)
    modifyVersionMethodForVersion: versionString
      versionSpecsDo: [ :attr :versionSpec | 
          attr == #'common'
            ifTrue: [ versionSpec blessing: #'release' ].
          true ];
    commitMethod