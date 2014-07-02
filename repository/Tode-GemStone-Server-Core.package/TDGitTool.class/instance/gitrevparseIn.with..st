as yet unclassified
gitrevparseIn: gitRepoDir with: args
  ^ self performGitCommand: 'rev-parse' in: gitRepoDir with: args