project
projectPull: registration remoteName: remote
  | gitRepoDirectory gitTool |
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool
    gitpullIn: gitRepoDirectory
    with: remote , ' ' , registration currentBranchName