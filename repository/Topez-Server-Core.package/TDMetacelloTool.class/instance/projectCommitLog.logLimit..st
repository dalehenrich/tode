project api
projectCommitLog: registration logLimit: logLimit
  | gitTool gitRepoDirectory |
  self validateGitRepoExistsFor: registration.
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  gitTool
    gitlogtool: 'HEAD'
    limit: logLimit
    gitRepoDirectory: gitRepoDirectory
    label: 'Commit log for ' , registration projectName printString