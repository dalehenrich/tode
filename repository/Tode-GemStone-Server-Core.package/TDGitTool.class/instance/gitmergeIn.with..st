as yet unclassified
gitmergeIn: gitRepoDir with: args
  ^ self performGitCommand: 'merge' in: gitRepoDir with: args