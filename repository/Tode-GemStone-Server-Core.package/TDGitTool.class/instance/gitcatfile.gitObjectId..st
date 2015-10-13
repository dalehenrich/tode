as yet unclassified
gitcatfile: gitRepoDirectory gitObjectId: gitObjectId
  | result |
  result := self
    performGitCommand: 'cat-file'
    in: gitRepoDirectory
    with: '-p ' , gitObjectId
    logging: false.
  ^ result