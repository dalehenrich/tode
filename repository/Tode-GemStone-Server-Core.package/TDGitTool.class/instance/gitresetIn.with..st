as yet unclassified
gitresetIn: gitRepoDir with: args
  ^ self performGitCommand: 'reset' in: gitRepoDir with: args