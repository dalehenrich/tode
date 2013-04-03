as yet unclassified
mradd
  "mr add <repository-spec> <package-name>"

  | repo workingCopy packageName |
  packageName := tokens at: 3.
  workingCopy := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'no matching package found' ].
  repo := self repositoryFromDescription: (tokens at: 2).
  workingCopy repositoryGroup addRepository: repo.
  ^ workingCopy