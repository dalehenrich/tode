accessing
versionString
  "the version called for by the projectSpec or (for disk based SCM) the version that is present 
   on disk (i.e., git commitish of clone)"

  versionString
    ifNil: [ 
      versionString := (MetacelloPlatform current
        gitCommitShaFor: self gitRepoDirectoryPath)
        ifNotNil: [ :sha | sha ]
        ifNil: [ '' ] ].
  ^ versionString