project api
projectCommitLog: registration logLimit: logLimit
  | gitTool gitRepoDirectory |
  registration hasFileTreeRepo
    ifFalse: [ 
      self
        error:
          'Project must be using a FileTree repo and git to obtain a commit log' ].
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  gitTool gitlogtool: 'HEAD' limit: logLimit gitRepoDirectory: gitRepoDirectory