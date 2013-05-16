as yet unclassified
mrgroup
  "mr group <package-name>
      group @<workingCopy-path>
  "

  | workingCopy packageName list stream displayPolicy |
  packageName := tokens at: 2.
  workingCopy := workingCopy := self resolveWorkingCopyReference: packageName.
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
    resultObject: (list collect: [ :each | each repository ]);
    yourself