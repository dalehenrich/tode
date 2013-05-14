as yet unclassified
mrremove
  "mr remove <repository-spec> <package-name>
      remove @<repository-path> <package-name>
      remove <repository-spec> @<workingCopy-path>
      remove @<repository-path> @<workingCopy-path>
  "

  | repo workingCopy packageName |
  packageName := tokens at: 3.
  workingCopy := workingCopy := self resolveWorkingCopyReference: packageName.
  repo := self resolveRepositoryReference: (tokens at: 2).
  workingCopy repositoryGroup removeRepository: repo.
  ^ workingCopy