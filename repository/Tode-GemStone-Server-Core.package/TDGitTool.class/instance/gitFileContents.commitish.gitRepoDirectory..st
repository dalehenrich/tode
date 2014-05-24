as yet unclassified
gitFileContents: path commitish: commitish gitRepoDirectory: gitRepoDirectory
  ^ self
    performGitCommand: 'show'
    in: gitRepoDirectory
    with: commitish , ':' , path
    logging: false