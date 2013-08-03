as yet unclassified
performGitCommand: gitCommand requiredCommandArgs: requiredCommandArgs
  ^ self
    performGitCommand: gitCommand
    requiredCommandArgs: requiredCommandArgs
    defaultArgs: ''