git
gitUpdateRegistrationVersionInfo: projectRegistration
  | gitRepoDir |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  (MetacelloPlatform current gitCommitShaFor: gitRepoDir fullName)
    ifNotNil: [ :sha | projectRegistration versionInfo versionString: sha ]