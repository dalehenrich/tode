project api
projectPush: registration remoteName: remote
  | gitRepoDirectory gitTool |
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool
    gitpushIn: gitRepoDirectory
    with: remote , ' ' , registration currentBranchName