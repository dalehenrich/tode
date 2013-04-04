as yet unclassified
mrremove
  "mr remove <repository-spec> <pkg-name>"

  | repo workingCopy packageName |
  packageName := tokens at: 3.
  workingCopy := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'no matching package found' ].
  repo := self repositoryFromDescription: (tokens at: 2).
  workingCopy repositoryGroup removeRepository: repo.
  ^ workingCopy