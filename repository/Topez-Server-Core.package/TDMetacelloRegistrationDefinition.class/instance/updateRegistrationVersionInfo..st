project list
updateRegistrationVersionInfo: gitRepoPath
  (MetacelloPlatform current gitCommitShaFor: gitRepoPath)
    ifNotNil: [ :sha | self versionInfo versionString: sha ]