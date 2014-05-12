as yet unclassified
gitFileContents: fileSha gitRepoDirectory: gitRepoDirectory
  | theFileSha |
  theFileSha := fileSha.
  (fileSha endsWith: '...')
    ifTrue: [ theFileSha := fileSha copyFrom: 1 to: fileSha size - 3 ].
  ^ self
    performGitCommand: 'cat-file'
    in: gitRepoDirectory
    with: ' blob ' , theFileSha
    logging: false