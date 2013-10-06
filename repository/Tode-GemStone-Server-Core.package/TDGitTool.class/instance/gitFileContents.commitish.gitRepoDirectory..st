as yet unclassified
gitFileContents: path commitish: commitish gitRepoDirectory: gitRepoDirectory
  | theCommitish |
  theCommitish := commitish.
  (commitish endsWith: '...')
    ifTrue: [ theCommitish := commitish copyFrom: 1 to: commitish size - 3 ].
  ^ self
    performGitCommand: 'cat-file'
    in: gitRepoDirectory
    with: ' blob ' , theCommitish
    logging: false