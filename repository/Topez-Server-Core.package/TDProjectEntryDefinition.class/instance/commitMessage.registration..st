actions
commitMessage: aProjectTool registration: aProjectRegistration
  self commandMap at: 'commitMessage' ifAbsent: [ ^ '' ].
  ^ self concreteCommitMessage: aProjectTool registration: aProjectRegistration