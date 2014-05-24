git
gitDiff: projectRegistration
  | status gitRepoDir gitTool |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  gitTool := topez toolInstanceFor: 'git'.
  ^ gitTool gitdifftool: gitRepoDir