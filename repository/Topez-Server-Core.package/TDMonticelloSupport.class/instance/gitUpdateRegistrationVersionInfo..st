git
gitUpdateRegistrationVersionInfo: projectRegistration
  | gitRepoDir |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  projectRegistration updateRegistrationVersionInfo: gitRepoDir fullName