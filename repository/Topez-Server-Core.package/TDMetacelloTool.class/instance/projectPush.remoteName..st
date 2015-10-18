project
projectPush: registration remoteName: remote
  | gitRepoDirectory gitTool |
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  ^ gitTool
    gitpushIn: gitRepoDirectory
    with: remote , ' ' , registration currentBranchName