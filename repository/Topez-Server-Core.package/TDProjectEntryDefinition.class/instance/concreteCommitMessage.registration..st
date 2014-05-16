actions-concrete
concreteCommitMessage: aProjectTool registration: aProjectRegistration
  | nodeName |
  nodeName := self commandMap at: 'commitMessage'.
  ^ (aProjectTool topez lookup: self projectPath , '/' , nodeName) dotSelfObject