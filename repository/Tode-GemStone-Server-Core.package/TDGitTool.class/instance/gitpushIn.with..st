as yet unclassified
gitpushIn: gitRepoDir with: args
  ^ self performGitCommand: 'push' in: gitRepoDir with: args