as yet unclassified
mrgroup
  "mr group <pkg-name>"

  | workingCopy packageName list stream displayPolicy |
  packageName := tokens at: 2.
  workingCopy := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'no matching package found' ].
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  list := self class
    buildRepositoryList: workingCopy repositoryGroup repositories.
  list
    do: [ :pkg | 
      pkg displayOn: displayPolicy.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: list;
    yourself