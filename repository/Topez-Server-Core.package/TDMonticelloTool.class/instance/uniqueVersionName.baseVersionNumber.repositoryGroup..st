as yet unclassified
uniqueVersionName: baseName baseVersionNumber: baseVersionNumber repositoryGroup: repositoryGroup
  | versionName number |
  number := baseVersionNumber.
  [ 
  number := number + 1.
  versionName := baseName , '.' , number asString.
  repositoryGroup includesVersionNamed: versionName ]
    whileTrue.
  ^ versionName