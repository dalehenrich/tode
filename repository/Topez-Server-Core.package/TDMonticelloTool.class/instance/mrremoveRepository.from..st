as yet unclassified
mrremoveRepository: repo from: workingCopy
  | repositoryGroup |
  repositoryGroup := workingCopy repositoryGroup.
  repositoryGroup removeRepository: repo.
  ^ workingCopy