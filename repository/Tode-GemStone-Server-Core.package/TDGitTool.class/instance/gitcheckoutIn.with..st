as yet unclassified
gitcheckoutIn: gitRepoDir with: args
  ^ self performGitCommand: 'checkout' in: gitRepoDir with: args