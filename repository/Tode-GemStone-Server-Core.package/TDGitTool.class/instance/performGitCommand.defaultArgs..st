as yet unclassified
performGitCommand: gitCommand defaultArgs: defaultArgs
  ^ self
    performGitCommand: gitCommand
    requiredCommandArgs: 0
    defaultArgs: defaultArgs