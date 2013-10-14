as yet unclassified
mrremove
  "mr remove <repository-spec> [ <package-name> ]
      remove @<repository-path> [ <package-name> ]
      remove <repository-spec> [ @<workingCopy-path> ]
      remove @<repository-path> [ @<workingCopy-path> ]
  "

  | repo workingCopy packageName repositoryGroup |
  repo := self resolveRepositoryReference: (tokens at: 2).
  ^ tokens size > 2
    ifTrue: [ 
      packageName := tokens at: 3.
      workingCopy := self resolveWorkingCopyReference: packageName.
      self mrremoveRepository: repo from: workingCopy ]
    ifFalse: [ self mrremoveRepository: repo ]