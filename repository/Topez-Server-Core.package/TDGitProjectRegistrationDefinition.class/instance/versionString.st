accessing
versionString
  versionString
    ifNil: [ 
      versionString := (MetacelloPlatform current
        gitCommitShaFor: self gitRepoDirectoryPath)
        ifNotNil: [ :sha | sha ]
        ifNil: [ '' ] ].
  ^ versionString