as yet unclassified
mrremoveRepository: repo from: workingCopy
  | repositoryGroup |
  workingCopy
    ifNil: [ 
      MCRepositoryGroup default removeRepository: repo.
      ^ workingCopy ].
  repositoryGroup := workingCopy repositoryGroup.
  repositoryGroup removeRepository: repo.
  ^ workingCopy