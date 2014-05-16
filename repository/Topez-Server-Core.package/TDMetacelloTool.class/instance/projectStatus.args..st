project api
projectStatus: registration args: args
  | gitTool gitRepoDirectory |
  self validateGitRepoExistsFor: registration.
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool gitstatusIn: gitRepoDirectory with: args