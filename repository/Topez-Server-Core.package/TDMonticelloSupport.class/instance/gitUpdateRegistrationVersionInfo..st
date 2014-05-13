git
gitUpdateRegistrationVersionInfo: projectRegistration
  | gitRepoDir |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  (MetacelloPlatform current gitCommitShaFor: gitRepoDir)
    ifNotNil: [ :sha | projectRegistration versionInfo versionString: sha ]