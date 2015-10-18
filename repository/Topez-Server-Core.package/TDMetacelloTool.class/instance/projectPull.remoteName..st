project
projectPull: registration remoteName: remote
  | gitRepoDirectory gitTool |
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  ^ gitTool
    gitpullIn: gitRepoDirectory
    with: remote , ' ' , registration currentBranchName