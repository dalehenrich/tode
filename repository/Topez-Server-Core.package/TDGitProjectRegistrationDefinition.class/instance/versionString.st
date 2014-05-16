accessing
versionString
  (MetacelloPlatform current gitCommitShaFor: self gitRepoDirectoryPath)
    ifNotNil: [ :sha | ^ sha ].
  ^ ''