registration
primeVersionString: projectRegistration gitRepoDirectory: gitRepoDirectory
  (MetacelloPlatform current gitCommitShaFor: gitRepoDirectory)
    ifNotNil: [ :sha | projectRegistration versionInfo versionString: sha ].
  ^ projectRegistration versionInfo versionString