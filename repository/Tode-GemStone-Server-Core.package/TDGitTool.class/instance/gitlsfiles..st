as yet unclassified
gitlsfiles: gitRepoDirectory
  | result |
  result := self
    performGitCommand: 'ls-files'
    in: gitRepoDirectory
    with: '-u'
    logging: false.
  ^ self parseLsFiles: result