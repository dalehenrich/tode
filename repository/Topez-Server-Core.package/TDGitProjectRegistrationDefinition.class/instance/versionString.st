accessing
versionString
  (MetacelloPlatform current gitCommitShaFor: self gitRepoDirectory)
    ifNotNil: [ :sha | ^ sha ].
  ^ ''