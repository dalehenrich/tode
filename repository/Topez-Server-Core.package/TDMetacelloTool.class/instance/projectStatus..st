project api
projectStatus: registration
  | gitTool gitRepoDirectory |
  self validateGitRepoExistsFor: registration.
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool gitstatusIn: gitRepoDirectory with: ''