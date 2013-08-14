as yet unclassified
gitfetchIn: gitRepoDir with: args
  ^ self performGitCommand: 'fetch' in: gitRepoDir with: args