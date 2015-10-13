as yet unclassified
mradd
  "mr add <repository-spec> <package-name>
      add @<repository-path> <package-name>
      add <repository-spec> @<workingCopy-path>
      add @<repository-path> @<workingCopy-path>
  "

  | repo workingCopy packageName |
  packageName := tokens at: 3.
  workingCopy := self resolveWorkingCopyReference: packageName.
  repo := self resolveRepositoryReference: (tokens at: 2).
  ^ self mradd: repo to: workingCopy