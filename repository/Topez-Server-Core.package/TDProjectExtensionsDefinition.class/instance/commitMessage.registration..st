actions
commitMessage: aProjectTool registration: aProjectRegistration
  | nodeName |
  nodeName := self commandMap at: 'commitMessage' ifAbsent: [ ^ '' ].
  ^ (aProjectTool topez lookup: self projectPath , '/' , nodeName) dotSelfObject