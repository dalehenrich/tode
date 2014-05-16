registration
primeVersionString: projectRegistration gitRepoDirectory: gitRepoDirectory
  (MetacelloPlatform current gitCommitShaFor: gitRepoDirectory fullName)
    ifNotNil: [ :sha | projectRegistration versionInfo versionString: sha ].
  ^ projectRegistration versionInfo versionString