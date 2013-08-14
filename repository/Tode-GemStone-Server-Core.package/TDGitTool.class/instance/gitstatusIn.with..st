as yet unclassified
gitstatusIn: gitRepoDir with: args
  ^ self performGitCommand: 'status' in: gitRepoDir with: args