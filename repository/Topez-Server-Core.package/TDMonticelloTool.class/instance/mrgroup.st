as yet unclassified
mrgroup
  "mr group <package-name>
      group @<workingCopy-path>
  "

  | workingCopy packageName group |
  packageName := tokens at: 2.
  workingCopy := workingCopy := self resolveWorkingCopyReference: packageName.
  group := workingCopy repositoryGroup.
  self
    mrBrowseRepositories: [ group repositories ]
    label: packageName , ' repository group'.
  ^ group