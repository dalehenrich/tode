as yet unclassified
gitlogIn: gitRepoDir with: args
  ^ self performGitCommand: 'log' in: gitRepoDir with: args