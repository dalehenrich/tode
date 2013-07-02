as yet unclassified
mrgroup
  "mr group <package-name>
      group @<workingCopy-path>
  "

  | workingCopy packageName group stream displayPolicy |
  packageName := tokens at: 2.
  workingCopy := workingCopy := self resolveWorkingCopyReference: packageName.
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  group := workingCopy repositoryGroup.
  group repositories
    do: [ :pkg | 
      pkg displayOnPolicy: displayPolicy.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: group;
    yourself