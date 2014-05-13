project api
projectCommitLogEntries: registration commitish: commitish logLimit: logLimit
  | gitTool gitRepoDirectory |
  self validateGitRepoExistsFor: registration.
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool
    gitlogFull: commitish
    limit: logLimit
    gitRepoDirectory: gitRepoDirectory