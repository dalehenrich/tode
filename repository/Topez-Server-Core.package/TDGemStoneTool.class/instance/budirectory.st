as yet unclassified
budirectory
  "bu directory [<server-directory-path>]"

  tokens size > 1
    ifTrue: [ self class backupDirectoryName: (tokens at: 2) ].
  ^ self class backupDirectoryName